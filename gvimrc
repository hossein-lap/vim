"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"                                     "
" main section                        "
" "
source ~/.vim/main.vim
"
" colorscheme                         "
" "
set termguicolors                     " let vim use color in GUI mode
"                                      
" codedark onedark phoenix github     " list of good colorschemes
" xcodedarkhc molokai xcodedark       " --
" ghdark dalton minimalist ayu        " --
" sunbather dark_plus vadelma         " --
"                                      
colorscheme ayu                       " active colorscheme
"                                      
" lightline                           "
" "
" materia material codedark           " list of some scheme
" ayu deus darcula one vadelma        " -
" OldHope selenized_black             " -
"
" active colorscheme
"let g:lightline = {
"     \ 'colorscheme' : 'mpvadelma',
"     \ }

""" skel templates
"" add ready-to-use text by .ext
source ~/.vim/skels.vim
"                                     
"" plugins, auto complations
source ~/.vim/gmain.vim
"
"" statusline
source ~/.vim/status.vim
"source ~/.vim/simplestatus.vim
"
"" compile 
source ~/.config/nvim/cp.vim
"
