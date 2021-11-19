"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"                
"" Color: {{{
hi User1 ctermfg=015 ctermbg=235 guifg=#f1f1f1 guibg=#121212 "
"" }}}

"" git function {{{
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
        \ system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

autocmd BufEnter * call GetGitBranch()
"" }}}
"" Status Line: {{{
set laststatus=2                  " show status line
set statusline=                   " status line config
set statusline+=%1*\              " set color, blank space
"set statusline+=%#StatusLine#\    " default status color
set statusline+=\                 " blank space
set statusline+=%f  			  " full path
set statusline+=\                 " blank space
set statusline+=%m                " show modification symbol
set statusline+=\                 " blank space
set statusline+=\(%{StatuslineGitBranch()}\)               " git brunch in current directory
set statusline+=\                 " blank space
set statusline+=%=                " switch to the right side
set statusline+=%y                " file-type 
set statusline+=\ \               " blank space
set statusline+=%c                " separator
set statusline+=\ \               " blank space
set statusline+=%l\:%L            " line numbers
set statusline+=\ \ \ \ \ \       " blank space
set statusline+=\ \ \ \ \ \       " blank space
set statusline+=\                 " blank space
set statusline+=%P                " modification symbol
set statusline+=\                 " separator
"" }}}
