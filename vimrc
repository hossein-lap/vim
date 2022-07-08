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
" sep gvim and vim {{{
if has("gui_running")
"  colorscheme hybrid_material
"  colorscheme onehalflight
:  colorscheme materialbox
:  set background=light
:  set termguicolors
:  set hlsearch
:  source ~/.vim/simplestatus.vim
:  set guifont=Source\ Code\ Pro\ Medium\ 15
"  set guifont=Vazir\ Code\ Hack\ Extra\ Height\ 13
"  source ~/.vim/gextra.vim
"  set go-=m
"  set go-=T
"  set go-=r
"  set guioptions-=!
"  set guioptions-=i
"  set guioptions-=v
"  set guioptions-=e
"  set guipty
"  set gtl=2
:  nmap <C-=>- :call FontSizeMinus()<CR>
:  nmap <C-=>= :call FontSizePlus()<CR>
elseif empty($DISPLAY)
:   " TTY
:   colorscheme industry
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

if has("unix")
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\( \)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ' '.l:gf_size_whole
      let &guifont = substitute(&guifont, ' \d\+$', l:new_font_size, '')
    endfunction
else
    function! FontSizePlus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole + 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction

    function! FontSizeMinus ()
      let l:gf_size_whole = matchstr(&guifont, '\(:h\)\@<=\d\+$')
      let l:gf_size_whole = l:gf_size_whole - 1
      let l:new_font_size = ':h'.l:gf_size_whole
      let &guifont = substitute(&guifont, ':h\d\+$', l:new_font_size, '')
    endfunction
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
