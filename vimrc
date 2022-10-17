"          _         
"   _   __(_)___ ___ 
"  | | / / / __ `__ \
"  | |/ / / / / / / /
"  |___/_/_/ /_/ /_/ 
" 
"" Main Section:
source ~/.vim/main.vim
"
" Separate Tty And Terminal:
if empty($DISPLAY)
	"" TTY
	colorscheme desert
	set nocursorline
else
	"" Terminal
	"set ls=0
	"set showtabline=0
	"set cursorline
	"" Colorschemes:
	"solarized minimalist 256_noir codedark
	"sunbather hybrid xcodedarkhc gruvbox
	colorscheme hybrid
	""
	"" Statusline:
	source ~/.vim/simplestatus.vim
	"source ~/.vim/sstatus.vim
	"source ~/.vim/status.vim
	""source ~/.vim/extra.vim
endif
"
hi SpecialKey ctermbg=NONE guibg=NONE

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
"" Build notes from one script of mine (if you don's know or use it, just comment it out)
source ~/.vim/Note.vim
"
"highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
