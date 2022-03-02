"  netrw section
" open netrw on startup (0 = on, 1 = off)
let g:NetrwIsOpen=1
"
let g:netrw_banner       = 0
let g:netrw_liststyle    = 3
let g:netrw_browse_split = 4
let g:netrw_winsize      = 25
let g:netrw_menu         = 1
let g:netrw_altv         = 1
let g:netrw_cursor       = 4
let g:netrw_fastbrowse   = 2
let g:netrw_sort_by      = "exten"
"let g:netrw_preview      = 1
"let g:netrw_alto         = 0
"let g:netrw_keepdir      = 0
"
"
"" split char
set fillchars+=vert:\|

noremap <silent> <leader>ff :call ToggleNetrw()<CR>
noremap <silent> <leader>fe :call RefreshNetrw()<CR>

"au BufWritePost buffer silent call RefreshNetrw()<CR>
"au BufWritePost *.md silent :!bash markdown-create.sh %:p %:p:r.htm

" Netrw key mapping {{{
function! OpenToRight()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'belowright vnew' g:path
	:normal <C-w>l
endfunction

function! OpenBelow()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'belowright new' g:path
	:normal <C-w>l
endfunction

function! OpenTab()
	:normal v
	let g:path=expand('%:p')
	execute 'q!'
	execute 'tabedit' g:path
	:normal <C-w>l
endfunction

function! NetrwMappings()
		noremap <buffer> V :call OpenToRight()<cr>
		noremap <buffer> H :call OpenBelow()<cr>
		noremap <buffer> T :call OpenTab()<cr>
endfunction

augroup netrw_mappings
		autocmd!
		autocmd filetype netrw call NetrwMappings()
augroup END
"}}}
"
" Allow for netrw to be toggled
function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Lexplore
		exe "call win_gotoid(1000)"
	endif
endfunction

" Allow for netrw to be rereshed
function! RefreshNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
        call ToggleNetrw()
		exe "call win_gotoid(1000)"
	endif
endfunction

" Check before opening buffer on any file
function! NetrwOnBufferOpen()
	if exists('b:noNetrw')
		return
	endif
	call ToggleNetrw()
endfun

" Close Netrw if it's the only buffer open
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Make netrw act like a project Draw
augroup ProjectDrawer
	autocmd!
	" Don't open Netrw
"	autocmd VimEnter ~/.config/joplin/tmp/*,/tmp/calcurse*,~/.calcurse/notes/*,~/vimwiki/*,*/.git/COMMIT_EDITMSG let b:noNetrw=1
	autocmd VimEnter * :call NetrwOnBufferOpen()
augroup END
