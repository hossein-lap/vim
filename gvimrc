"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"                                   "
"" main section                     "
source ~/.vim/main.vim
set background=dark                 " use the dark theme
"
"" keybinding
source ~/.vim/keybinds.vim
"
"" colorscheme                      "
colorscheme molokai
"
"" more color
set termguicolors
set autochdir
"
"" add ready-to-use text by .ext
source ~/.vim/skels.vim
"
"" status line section
"source ~/.vim/simplestatus.vim
"source ~/.vim/status.vim
source ~/.vim/gvimstatus.vim
"
"" compile section
source ~/.vim/gcp.vim

"" plugins
source ~/.vi/extra.vim
"
""
"autocmd VimEnter * 20Lex<C-w><C-w>
"
"" nnn filemanager
"source ~/.vim/nnn.vim