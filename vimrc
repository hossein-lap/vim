"  _    ___
" | |  / (_)___ ___
" | | / / / __ `__ \
" | |/ / / / / / / /
" |___/_/_/ /_/ /_/
"
"" main section:
source ~/.vim/vimscript/main.vim
"
" separate tty and terminal:
if has("gui_running")
	set nowrap
	colorscheme hybrid
	source ~/.vim/vimscript/status.vim
	source ~/.vim/vimscript/extra.vim
	set cursorline
	set nu
	set nolist
	set guifont=Source\ Code\ Pro\ Medium\ 16
elseif empty($DISPLAY)
	"" TTY
	set nolist
	colorscheme desert
	set nocursorline
else
	"" Terminal
	set ls=2
	set showtabline=0
	set cursorline
	set nu
	"" colorschemes:
	"solarized minimalist 256_noir codedark
	"sunbather hybrid xcodedarkhc gruvbox
	colorscheme 256_noir
	""
	"" statusline:
	"source ~/.vim/vimscript/simplestatus.vim
	"source ~/.vim/vimscript/sstatus.vim
	"source ~/.vim/vimscript/status.vim
	source ~/.vim/vimscript/extra.vim
endif
"
hi SpecialKey ctermbg=NONE guibg=NONE

"" keybinding
source ~/.vim/vimscript/keybinds.vim
"
"" netrw
source ~/.vim/vimscript/netrw.vim
"
"" add ready-to-use text by .ext
source ~/.vim/vimscript/skels.vim
"
"" compile section
source ~/.vim/vimscript/oldcp.vim
"
"" take note
source ~/.vim/vimscript/Note.vim
"
"" scpecial characters
source ~/.vim/vimscript/abreviation.vim
"
"" define sent filetype
au FileType sent source ~/.vim/vimscript/sent.vim
"
"" add some extra features + plugins (commented out)
source ~/.vim/vimscript/extra.vim
"
"" Build notes from one script of mine (if you don's know or use it, just comment it out)
source ~/.vim/vimscript/Note.vim
"
"highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

"autocmd VimEnter * nested
"\ if !argc() && (line2byte('$') == -1) && (v:progname =~? '^[-gmnq]\=vim\=x\=\%\$')
"\ | if get(g:, 'startify_session_autoload') && filereadable('Session.vim')
"\ | source ~/.vim/vimscript/session.vim
"\ | else
"\ | call startify#insane_in_the_membrane()
"\ | endif
"\ | endif
"\ | autocmd! startify VimEnter
"source ~/.vim/vimscript/session.vim
