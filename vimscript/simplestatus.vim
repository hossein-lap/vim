"   _  _ ___
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"                
"
set ls=2
" Git Function: {{{
function! StatuslineGitBranch()
    if exists("g:git_branch")
        return g:git_branch
    else
        return ''
    endif
endfunction

function! GetGitBranch()
    let l:is_git_dir = system('echo -n $(git rev-parse --is-inside-work-tree)')
    let g:git_branch = l:is_git_dir == 'true' ?
        \ system('bash -c "echo -n \"   ($(git rev-parse --abbrev-ref HEAD 2>/dev/null))   \""') : ''
endfunction

autocmd BufEnter * call GetGitBranch()
" }}}
" Color: {{{
"hi NCStatus ctermfg=255 ctermbg=235 guifg=#cccccc guibg=#121212 cterm=NONE gui=NONE 
"hi User1 ctermfg=255 ctermbg=235 guifg=#cccccc guibg=#121212 cterm=NONE gui=NONE 
"hi User2 ctermbg=255 ctermfg=235 guibg=#cccccc guifg=#121212 cterm=NONE gui=NONE 
"hi User1 ctermbg=015 ctermfg=235 guibg=#f1f1f1 guifg=#121212 cterm=NONE gui=NONE  "
"hi! link StatusLineNC User2
hi! link User1 StatusLine
hi! link User2 StatusLineNC
" }}}
" Status Line: {{{
set laststatus=2                  " show status line
set statusline=                   " status line config
set statusline+=%1*\              " set color, blank space
"set statusline+=%#StatusLine#\    " default status color
set statusline+=%F\               "
set statusline+=%m\               "
set statusline+=%r%h%w            " readonly, helpfile, preview
set statusline+=%=                " switch to the right side
set statusline+=%y\ \             "
set statusline+=%c\ \             "
set statusline+=%l\:%L            " line numbers
set statusline+=\                 " blank space
set statusline+=%{StatuslineGitBranch()}  " git brunch in current directory
set statusline+=\                 " blank space
set statusline+=%P\               "
" }}}
"" TabLine {{{
"function MyTabLine()
	"let s = '%1*'
	"for i in range(tabpagenr('$'))
	"" select the highlighting
	"if i + 1 == tabpagenr()
		"let s ..= '%#TabLineSel#'
	"else
		"let s ..= '%1*'
	"endif
"
	"" set the tab page number (for mouse clicks)
	"let s ..= '%' .. (i + 1) .. 'T'
"
	"" the label is made by MyTabLabel()
	"let s ..= ' %{MyTabLabel(' .. (i + 1) .. ')} '
	"endfor
"
	"" after the last tab fill with TabLineFill and reset tab page nr
	"let s ..= '%1*%T'
"
	"" right-align the label to close the current tab page
	"if tabpagenr('$') > 1
	"let s ..= '%=%1*%999Xx'
	"endif
"
	"return s
"endfunction
"
"function MyTabLabel(n)
	"let buflist = tabpagebuflist(a:n)
	"let winnr = tabpagewinnr(a:n)
	"return bufname(buflist[winnr - 1])
"endfunction
"
"
"set showtabline=2
"set tabline=%!MyTabLine()
"
""set tabline=
""set tabline+=%1*%.20t
""set tabline+=\ \|                " blank space
"" }}}
