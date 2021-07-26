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
call plug#begin('~/.config/nvim/plugged')

  Plug 'vim-scripts/AutoComplPop'       " auto completion plugin
  Plug 'ap/vim-css-color'               " Color previews for CSS
" Plug 'itchyny/lightline.vim'          " Lightline statusbar

call plug#end()
"
