"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"                                   "
"" main section                     "
source ~/.vim/main.vim
autocmd FileType sh norm :set tabstop=2
"nnoremap <leader>fe :!g++ %:r.cpp -o output<CR>
"
"" keybinding
source ~/.vim/keybinds.vim
"
"" colorscheme                      "
"colorscheme material
"colorscheme 256_noir
colorscheme minimalist
"
"" term
"set termguicolors
"
"" add ready-to-use text by .ext
source ~/.vim/skels.vim
"
"" status line section
source ~/.vim/simplestatus.vim
"source ~/.vim/status.vim
"
"" compile section
source ~/.vim/oldcp.vim
"
"" plugins
source ~/.vim/extra.vim
source ~/.vim/ext.vim
"
""
"autocmd VimEnter * 20Lex<C-w><C-w>
"
source ~/.vim/Note.vim
"
"" nnn filemanager
"source ~/.vim/nnn.vim
"
""
source ~/.vim/vifm.vim
"
"" scpecial characters
source ~/.vim/abreviation.vim
