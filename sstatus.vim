"  _  _ ___                                      
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"                                                
set ls=2
"" {{{
"
""" status line drafts -used to be functions- {{{
"" git status function
""
""function! GitBranch()
""   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
""endfunction
""function! StatuslineGit()
""   let l:branchname = GitBranch()
""   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
""endfunction 
""
""function! CharCount()
""   return system("wc -m $ 2>/dev/null")
""endfunction
""function! PrintOutCount()
""   let l:CharOutCount = CharCount()
""   return strlen(l:CharOutCount) > 0?'  '.l:CharOutCount.' ':''
""endfunction 
""
""function! CharCount()
""  return system("wc -m % 2> /dev/null | awk '{print $1}' ")
""endfunction
""function! ShowCount()
""  let l:countcharacters = CharCount()
""  return strlen(l:countcharacters) > 0?'  '.l:countcharacters.' ':''
""endfunction
""
"" status bar colors
""au InsertEnter * hi statusline guifg=black guibg=#dddddd ctermfg=black ctermbg=magenta
""au InsertLeave * hi statusline guifg=#050505  guibg=#aaaaaa ctermfg=black ctermbg=cyan
""hi statusline                  guifg=#050505  guibg=#aaaaaa ctermfg=black ctermbg=cyan
"
"
"" Status line
"" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
"" }}}
""" statusline with more things {{{
"set laststatus=2                                         " show status line
"set statusline=                                          " -
"set statusline+=%1*\ %{toupper(g:currentmode[mode()])}\  " The current mode
"set statusline+=\»\                                      " blank space
"set statusline+=%2*\ %<%F\ \[%M\]%r%h%w                  " File path, modified, readonly, helpfile, preview
"set statusline+=%4*\                                     " Separator
"set statusline+=%3*\(                                    " blank space
"set statusline+=%{StatuslineGitBranch()}                 " show git brunch in current  dir
"set statusline+=%3*\)                                    " blank space
"set statusline+=%3*\ \-%Y\-\                             " FileType
"set statusline+=%4*\|                                    " Separator
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
"set statusline+=%4*\ \|                                  " Separator
"set statusline+=%3*\ %{&ff}                              " FileFormat (dos/unix..)
"set statusline+=%=                                       " Right Side
"set statusline+=%3*\ %02v                                " Colomn number
"set statusline+=%4*\ \|                                  " Separator
"set statusline+=%2*\ %02l/%L                             " Line number / total lines, percentage of document
"set statusline+=%4*\ \|                                  " Separator
"set statusline+=%2*\ %p%%\ \                             " Line number / total lines, percentage of document
"set statusline+=%1*\ \num\ %n\                           " Buffer number
"set statusline+=\ %{strftime('%H:%M')}\                  " show time 
""
"" }}}
"
""" config section {{{
"set laststatus=2                                           " show status line
"set statusline=                                            " status line config
"set statusline+=%#StatusLine#                              " color-scheme
"set statusline+=%4*\ %{toupper(g:currentmode[mode()])}\    " The current mode
"set statusline+=\»\                                        " blank space
""set statusline+=%3*\ \(                                    " blank space
""set statusline+=%{StatuslineGitBranch()}                   " git brunch in current directory
""set statusline+=%{StatuslineGit()}                         " git brunch in current directory
""set statusline+=%3*\)                                      " blank space
"set statusline+=%2*\ %<%F\                                 " Full path
"set statusline+=%5*\ %m                                    " blank space
"set statusline+=%5*\ %r                                    " blank space
"set statusline+=%=                                         " Switch to the right side
"set statusline+=%3*\ %c                                    " cursor current position
"set statusline+=%3*\ \|\                                   " blank space
"set statusline+=%3*%l\/%L\                                 " blank space
"set statusline+=%3*\|                                      " blank space
"set statusline+=%3*\ \-%Y\-\                               " file type
"set statusline+=%1*\ \«                                    " blank space
"set statusline+=\                                          " blank space
"set statusline+=\(%{StatuslineGitBranch()}\)               " git brunch in current directory
"set statusline+=\                                          " blank space
""" }}}
"" statusline colors{{{
""
" " pink-black
"hi User1 cterm=bold ctermfg=232 ctermbg=168 gui=bold guifg=#000000 guibg=#d75f87
"hi User2 cterm=bold ctermfg=168 ctermbg=232 gui=bold guifg=#d75f87 guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212
                                                                        
" " dark-green-black
"hi User1 cterm=bold ctermfg=232 ctermbg=71  gui=bold guifg=#000000 guibg=#499c54
"hi User2 cterm=bold ctermfg=71  ctermbg=232 gui=bold guifg=#499c54 guibg=#121212
"hi User3 cterm=bold ctermfg=103 ctermbg=232 gui=bold guifg=#6897bb guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212

" " light-blue-black
"hi User1 cterm=bold ctermfg=232 ctermbg=14  gui=bold guifg=#000000 guibg=#4fb8cc
"hi User2 cterm=bold ctermfg=14  ctermbg=232 gui=bold guifg=#4fb8cc guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212

" " orange-black
"hi User1 cterm=bold ctermfg=232 ctermbg=208 gui=bold guifg=#000000 guibg=#ff8700
"hi User2 cterm=bold ctermfg=208 ctermbg=232 gui=bold guifg=#ff8700 guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212

" " light-red-black
"hi User1 cterm=bold ctermfg=232 ctermbg=167 gui=bold guifg=#000000 guibg=#fb4943
"hi User2 cterm=bold ctermfg=167 ctermbg=232 gui=bold guifg=#fb4943 guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212

" " yellow-black
"hi User1 cterm=bold ctermfg=232 ctermbg=226 gui=bold guifg=#000000 guibg=#ffff00
"hi User2 cterm=bold ctermfg=226 ctermbg=232 gui=bold guifg=#ffff00 guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212

" " Black and White
"hi User1 cterm=bold ctermfg=232 ctermbg=255 gui=bold guifg=#000000 guibg=#eeeeee
"hi User2 cterm=bold ctermfg=255 ctermbg=232 gui=bold guifg=#eeeeee guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212
                                                                                 
" " gray-black                                                                   
"hi User1 cterm=bold ctermfg=232 ctermbg=243 gui=bold guifg=#000000 guibg=#767676
"hi User2 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User3 cterm=bold ctermfg=255 ctermbg=232 gui=bold guifg=#eeeeee guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212
"
"}}}
"
"" very costumized colorscheme {{{
"hi User1 cterm=bold ctermfg=232 ctermbg=168 gui=bold guifg=#000000 guibg=#d75f87
"hi User2 cterm=bold ctermfg=015 ctermbg=234 gui=bold guifg=#fdfdfd guibg=#080808
"hi User3 ctermfg=168 ctermbg=234 guifg=#d75f87 guibg=#080808
"hi User4 ctermfg=015 ctermbg=234 guifg=#fdfdfd guibg=#080808
"" }}}
"{{{
""hi User1 cterm=bold ctermfg=232 ctermbg=208 gui=bold guifg=#000000 guibg=#ff8700
""hi User1 cterm=bold ctermfg=232 ctermbg=226 gui=bold guifg=#000000 guibg=#ffff00
"hi User1 cterm=bold ctermfg=232 ctermbg=4   gui=bold guifg=#000000 guibg=#007acc
"hi User2 cterm=bold ctermfg=015 ctermbg=233 gui=bold guifg=#fdfdfd guibg=#080808
"hi User3 ctermfg=4 ctermbg=233 guifg=#4fb8cc guibg=#121212
""hi User3 ctermfg=208 ctermbg=233 guifg=#ff8700 guibg=#121212
""hi User3 ctermfg=226 ctermbg=236 guifg=#ffff00 guibg=#080808
"hi User4 ctermfg=015 ctermbg=233 guifg=#fdfdfd guibg=#080808
"hi User5 ctermfg=015 ctermbg=233 guifg=#fdfdfd guibg=#080808
"}}}
"
" " medium-blue-black{{{
"hi User1 cterm=bold ctermfg=232 ctermbg=4   gui=bold guifg=#000000 guibg=#007acc
"hi User2 ctermfg=4   ctermbg=232 guifg=#007acc guibg=#121212
"hi User3 cterm=bold ctermfg=243 ctermbg=232 gui=bold guifg=#767676 guibg=#121212
"hi User4 cterm=bold ctermfg=235 ctermbg=232 gui=bold guifg=#262626 guibg=#121212
"hi User5 cterm=bold ctermfg=015 ctermbg=232 gui=bold guifg=#f1f1f1 guibg=#121212
"
"hi User1 ctermfg=232 ctermbg=208 guifg='#000000' guibg=#ff8700 "cterm=bold gui=bold
"hi User4 ctermfg=208 ctermbg=232 guifg='#ff8700' guibg=#000000 "cterm=bold gui=bold
"hi User1 ctermbg=015 ctermfg=232 guibg='#f1f1f1' guifg=#121212 "cterm=bold gui=bold
"hi User4 ctermfg=015 ctermbg=232 guifg='#f1f1f1' guibg=#121212 "cterm=bold gui=bold
"hi User1 ctermfg=232 ctermbg=119 guifg='#000000' guibg=#87ff5f "cterm=bold gui=bold
"hi User4 ctermfg=119 ctermbg=232 guifg='#87ff5f' guibg=#000000 "cterm=bold gui=bold
"hi User1 ctermfg=232 ctermbg=168 guifg='#000000' guibg=#d75f87 "cterm=bold gui=bold
"hi User4 ctermfg=168 ctermbg=232 guifg='#d75f87' guibg=#000000 "cterm=bold gui=bold
"hi User1 ctermfg=232 ctermbg=167 guifg='#000000' guibg=#fb4943 "cterm=bold gui=bold
"hi User4 ctermfg=167 ctermbg=232 guifg='#fb4943' guibg=#000000 "cterm=bold gui=bold
"}}}
"" used one {{{
"hi User1 ctermfg=232 ctermbg=4   guifg=#000000 guibg=#007acc cterm=bold gui=bold
"hi User4 ctermfg=4   ctermbg=232 guifg=#007acc guibg=#000000 cterm=bold gui=bold
"hi User3 ctermfg=167 ctermbg=232 guifg=#fb4943 guibg=#000000 "cterm=bold gui=bold
"hi User2 ctermfg=243 ctermbg=232 guifg=#989898 guibg=#000000 "cterm=bold gui=bold
"hi User5 ctermfg=015 ctermbg=232 guifg=#f1f1f1 guibg=#000000 "cterm=bold gui=bold
"
"set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ Normal\ ':''}
"set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ Insert\ ':''}
"set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ Replace\ ':''}
"set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ Visual\ ':''}
"set statusline+=%#VisualColor#%{(mode()=='V')?'\ \ V-Line\ ':''}
"set statusline+=%#VisualColor#%{(mode()=='CTRL-v')?'\ \ V-Block\ ':''}
"" }}}
"
"" }}}
"
" current config section {{{
"
" git function {{{
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
        \ system('bash -c "echo -n \"($(git rev-parse --abbrev-ref HEAD 2>/dev/null)) \""') : ''
"        \ system('bash -c "echo -n $(git rev-parse --abbrev-ref HEAD)"') : ''
endfunction

autocmd BufEnter * call GetGitBranch()
" }}}
" Show current vim mode{{{
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
\ "\<C-V>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

" }}}
"
"" Colors {{{ 
"hi User1 ctermbg=168	ctermfg=234	guibg=#ff7799	guifg=#282a2e	cterm=bold	gui=bold
"hi User2 ctermfg=208	ctermbg=234	guifg=#00afcc	guibg=#282a2e	cterm=bold	gui=bold
"hi User3 ctermfg=208	ctermbg=234	guifg=#00afcc	guibg=#282a2e	"cterm=bold	gui=bold
"hi User4 ctermfg=168	ctermbg=234	guifg=#ff7799	guibg=#282a2e	"cterm=bold	gui=bold
""hi User3 ctermfg=12		ctermbg=234	guifg=#00afcc	guibg=#282a2e	"cterm=bold	gui=bold
""hi User4 ctermfg=10		ctermbg=234	guifg=#cccccc	guibg=#282a2e	"cterm=bold	gui=bold
"hi User5 ctermfg=11		ctermbg=234	guifg=#ff9800	guibg=#282a2e	"cterm=bold	gui=bold
"hi User6 ctermfg=175	ctermbg=234	guifg=#ff9800	guibg=#282a2e	"cterm=bold	gui=bold
"
"hi Unfoc ctermbg=243 ctermfg=235 guibg=#767676 guifg=#121212 cterm=NONE gui=NONE
"hi! link StatusLineNC Unfoc
"" }}}
" Colors {{{ 
hi User1 ctermbg=9		ctermfg=234	guibg=#f92633	guifg=#282a2e	cterm=bold	gui=bold
hi User2 ctermfg=208	ctermbg=234	guifg=#00afcc	guibg=#282a2e	cterm=bold	gui=bold
hi User3 ctermfg=208	ctermbg=234	guifg=#00afcc	guibg=#282a2e	"cterm=bold	gui=bold
hi User4 ctermfg=168	ctermbg=234	guifg=#ff7799	guibg=#282a2e	"cterm=bold	gui=bold
"hi User3 ctermfg=12		ctermbg=234	guifg=#00afcc	guibg=#282a2e	"cterm=bold	gui=bold
"hi User4 ctermfg=10		ctermbg=234	guifg=#cccccc	guibg=#282a2e	"cterm=bold	gui=bold
hi User5 ctermfg=11		ctermbg=234	guifg=#ff9800	guibg=#282a2e	"cterm=bold	gui=bold
hi User6 ctermfg=175	ctermbg=234	guifg=#ff9800	guibg=#282a2e	"cterm=bold	gui=bold

hi Unfoc ctermbg=243 ctermfg=235 guibg=#767676 guifg=#121212 cterm=NONE gui=NONE
hi! link StatusLineNC Unfoc
" }}}
" Config section {{{
set laststatus=2                                       " show status line
set statusline=                                        " status line config
set statusline+=%1*\                   " blank space
set statusline+=%{toupper(g:currentmode[mode()])} " The current mode
"set statusline+=%1*%{toupper(g:currentmode[mode()])}   " The current mode
set statusline+=%1*\                   " blank space
set statusline+=%2*\                   " blank space
set statusline+=%{StatuslineGitBranch()}               " git brunch in current directory
set statusline+=%3*\                                   " blank space
set statusline+=%3*%<%F                " Full path
set statusline+=%4*\                   " blank space
set statusline+=%m                  " Modified character
set statusline+=%4*\                   " blank space
set statusline+=%r                  " ReadOnly character
set statusline+=%=                     " Break to the right side
set statusline+=\{                  " { char
set statusline+=%{&fileformat}      " show file format [EOL character]
set statusline+=\}                  " } char
set statusline+=%4*\                   " blank space
set statusline+=%3*\                   " blank space
set statusline+=%c                  " Current character
set statusline+=%3*\                   " blank space
set statusline+=%2*\                   " blank space
set statusline+=%l\/%L              " Line count
set statusline+=%2*\                   " blank space
set statusline+=%1*\                   " blank space
set statusline+=%y                  " file type
set statusline+=%1*\                   " blank space
"set statusline+=\                      " blank space
"set statusline+=\»                     " ascii character
"set statusline+=\                      " blank space
"set statusline+=%4*\|                  " blank space
"set statusline+=%2*\ \«                " blank space
" }}}
"
" }}}
