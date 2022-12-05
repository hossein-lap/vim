"" Plugins And Extra Settings:
"
" auto complete {{{
let g:AFillOn=0
function! ToggleAutoFill()
	if !g:AFillOn
		call AutoFill()
		echo "AutoFill macro activated."
	else
		call AutoFillOff()
		echo "AutoFill macro deactivated."
	endif
endfunction

function! AutoFill()
	let g:AFillOn=1
	inoremap "  ""<Left>
	inoremap `  ``<Left>
	inoremap '  ''<Left>
	inoremap (  ()<Left>
	inoremap [  []<Left>
	inoremap {  {}<Left>
endfunction

function! AutoFillOff()
	let g:AFillOn=0
	iu "
	iu `
	iu '
	iu (
	iu [
	iu {
endfunction

nmap <space><space>a :call ToggleAutoFill()<CR>

au FileType c,cpp,sh,python,lua,markdown,latex,vim,csh
	\ call AutoFill()

"" Markdown complete
function! MDownFill()
"	echo "MDownFill macro activated."
	let g:AFillOn=1
	inoremap *  **<Left>
	inoremap _  __<Left>
endfunction

function! MDownFillOff()
"	echo "MDownFill macro deactivated."
	let g:AFillOn=0
	iu *
	iu _
endfunction

au FileType markdown,rmd call MDownFill()
"au FileType html,xml inoremap <  <><Left>
" }}}
"" vim-plug {{{
"call plug#begin('~/.vim/plugged/')
	"Plug 'tribela/vim-transparent' " transparent background
	"""" colorschemes
	""Plug 'hossein-lap/vim-256noir'
	""Plug 'w0ng/vim-hybrid'
	""Plug 'nikolvs/vim-sunbather'
	""Plug 'dikiaap/minimalist'
	""Plug 'tomasiser/vim-code-dark'
	""Plug 'ericbn/vim-solarized'
	""Plug 'morhetz/gruvbox'
	""Plug 'fxn/vim-monochrome'
	""Plug 'kristijanhusak/vim-hybrid-material'
	""Plug 'arzg/vim-colors-xcode'
"call plug#end()
"
""""" Some more plugins:
""""" Do not uncomment these here
""""" You should put them between [call plug#XXX] first
"
"
""  Plug 'Jorengarenar/miniSnip' " minimal snippet manager
""  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " latex compile/preview
""  Plug 'lifepillar/vim-mucomplete'
""  Plug 'tpope/vim-markdown'
""  Plug 'vim-scripts/fountain.vim'
"""  Plug 'ap/vim-css-color'			   " Color previews for CSS
"""  Plug 'vim-scripts/AutoComplPop'	   " auto completion plugin
"""  Plug 'itchyny/lightline.vim'		  " Lightline statusbar
"""  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"""  Plug 'arcticicestudio/nord-vim'
"""  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"""  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"""  Plug 'mcchrish/nnn.vim'
"
""" }}}
"" background transparentcy
source ~/.vim/vimscript/background.vim
"
"set complete+=kspell
"set completeopt=menuone,popup,noinsert  " always show popup menu
"
"" enable filetype detection:
"filetype on
"filetype plugin on
"filetype indent on " file type based indentation
""
" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
"autocmd FileType c,cpp,java 
"		\ set formatoptions+=ro
"autocmd FileType c 
"		\ set omnifunc=ccomplete#Complete
""
" fixed indentation should be OK for XML and CSS. People have fast internet
" anyway. Indentation set to 2.
"autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2
"
"" Four length tab indetation for makefiles
autocmd FileType make 
		\ set shiftwidth=4 tabstop=4 softtabstop=4
"
"" Eight length tab indetation for c files
autocmd FileType c 
		\ set shiftwidth=8 tabstop=8 softtabstop=8
"
"" Eight length tab indetation for python files
autocmd FileType asm 
		\ set shiftwidth=8 softtabstop=8 syntax=nasm
"
"" Two length tab indentation for some files
autocmd FileType vim,lua,nginx,sh 
		\ set shiftwidth=4 tabstop=4 softtabstop=4
"
"" Four space indetation for python files
autocmd FileType python,rmd,sent,markdown 
		\ set expandtab shiftwidth=4 tabstop=4 softtabstop=4
