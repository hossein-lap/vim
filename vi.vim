"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"                
"              " 
syntax enable
set number
set nowrap
set nocp
set wildmenu
set tabstop=4
"set expandtab
set bs=2
"set cursorline
set scrolloff=1
set encoding=utf-8
set hlsearch
set showcmd
set noshowmode
"set showmode
"
"set clipboard=unnamed
set clipboard=unnamedplus
set mouse=a
"
"colorscheme aldmeris
"colorscheme 256_noir
colorscheme industry
"set t_Co=256                          " set vim to use 256 colors
"set background=dark                   " use the dark theme
"
set backupdir=$HOME/.vim/.backup
"
"""  netrw section
"" functions
" open file in right split via V 
function! OpenToRight()                   
  :normal v
    let g:path=expand('%:p')
    execute 'belowright vnew' g:path
    :normal <C-w>l
    execute 'q'
endfunction
"
" config section
let g:netrw_banner = 0                  
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 80
"
" run netrw at startup
"augroup ProjectDrawer                      
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
"
" keybinding
noremap <buffer> <A-h> <C-w>h                   
noremap <buffer> <A-l> <C-w>l
noremap <buffer> <A-C>x :call OpenToRight()<cr>
"
"" Show current vim mode{{{
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

"}}}
"
"
set laststatus=2                   " show status line
set statusline=                    " status line config
set statusline+=%#StatusLine#      " color-scheme
set statusline+=\"                 " Separator
set statusline+=%<%F    		   " full path
set statusline+=\"\                " Separator
set statusline+=%r                 " ReadOnly 
set statusline+=\                  " Separator
set statusline+=%L                 " Separator
set statusline+=\ lines\,\         " blank space
set statusline+=%{\ line2byte(line(\"$\")+1)-1\ }    " character count
set statusline+=\ \characters\     " blank space
set statusline+=\ \                " blank space
set statusline+=%=                 " Switch to the right side
set statusline+=\ \ \              " Separator
"set statusline+=%{toupper(g:currentmode[mode()])}    " show current mode
set statusline+=%{toupper(g:currentmode[mode()])}
set statusline+=\ \ \ \ \ \ \ \ \  " blank space
set statusline+=\[%M\]             " Modification 
set statusline+=\                  " Separator
"
" " abreviation
ab fsf Free Software Foundation
ab het the
ab eht the
"
