"   _  _ ___     
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"                
"                                   "
"" main section                     "
source ~/.vim/main.vim
"
"" status line section
"source ~/.vim/status.vim
"
" separate tty and terminal {{{
if empty($DISPLAY)
:   " TTY
:   colorscheme desert
:   set nocursorline
else
"  colorscheme hybrid
"  colorscheme 256_noir
":  colorscheme sunbather
  colorscheme hos
:  source ~/.vim/simplestatus.vim
"  source ~/.vim/sstatus.vim
"  source ~/.vim/extra.vim
endif
" }}}
"
"" keybinding
source ~/.vim/keybinds.vim
"
"" netrw
source ~/.vim/netrw.vim
"
"" add ready-to-use text by .ext
source ~/.vim/skels.vim
"
"" compile section
source ~/.vim/oldcp.vim
"
"" take note
source ~/.vim/Note.vim
"
"" scpecial characters
source ~/.vim/abreviation.vim
"
"" define sent filetype
au FileType sent source ~/.vim/sent.vim
"
"" add some extra features + plugins (commented out)
source ~/.vim/extra.vim
"
"" minisnippet plugin configs
source ~/.vim/snippet.vim
