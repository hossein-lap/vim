"  _  _ ___    
" | || | __|   Hossein Esmailzadeh
" | __ | _|    Email:  hosaidenpwr@protonmail.com
" |_||_|___|   Matrix: hosaidenpwd:matrix.org
"              
"
" auto complete for ( , " , ' , [ , { 
"
inoremap      (  ()<Left>
inoremap      "  ""<Left>
inoremap      `  ``<Left>
inoremap      '  ''<Left>
inoremap      [  []<Left>
inoremap      {  {}<Left>
"
" auto-suggest plugin 
"
set complete+=kspell                    " 
set completeopt=menuone,longest         " always show popup menu
set shortmess+=c                        " no showing matchs
"
" vim-plug
"
call plug#begin('~/.vim/plugged')

  Plug 'vim-scripts/AutoComplPop'       " auto completion plugin
  Plug 'ap/vim-css-color'               " Color previews for CSS

call plug#end()
"
" open all splits in the bottom-h
set splitbelow
"
" compile, debug and run
"
