"  _  _ ___     
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
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
"
function! AutoFill()
    let g:AFillOn=1
    inoremap "  ""<Left>
    inoremap `  ``<Left>
    inoremap '  ''<Left>
    inoremap (  ()<Left>
    inoremap [  []<Left>
    inoremap {  {}<Left>
endfunction
"
function! AutoFillOff()
    let g:AFillOn=0
    iu "
    iu `
    iu '
    iu (
    iu [
    iu {
endfunction
"
nmap <space><space>a :call ToggleAutoFill()<CR>
"
au FileType c,cpp,sh,python,lua,markdown,latex,vim,csh
      \ call AutoFill()
"
" Markdown complete
function! MDownFill()
"    echo "MDownFill macro activated."
    let g:AFillOn=1
    inoremap *  **<Left>
    inoremap _  __<Left>
endfunction
"
function! MDownFillOff()
"    echo "MDownFill macro deactivated."
    let g:AFillOn=0
    iu *
    iu _
endfunction
"
au FileType markdown call MDownFill()
"au FileType html,xml inoremap <  <><Left>
" }}}
"" vim-plug {{{
"call plug#begin('~/.vim/plugged/')
"  Plug 'Jorengarenar/miniSnip'
"  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"  Plug 'lifepillar/vim-mucomplete'
"  Plug 'tpope/vim-markdown'
"  Plug 'vim-scripts/fountain.vim'
"  Plug 'tribela/vim-transparent'
"call plug#end()
""  Plug 'ap/vim-css-color'               " Color previews for CSS
""  Plug 'vim-scripts/AutoComplPop'       " auto completion plugin
""  Plug 'itchyny/lightline.vim'          " Lightline statusbar
""  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
""  Plug 'arcticicestudio/nord-vim'
""  Plug 'neoclide/coc.nvim', {'branch': 'release'}
""  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
""  Plug 'mcchrish/nnn.vim'
""
"" }}}
""
"set complete+=kspell                    " 
"set completeopt=menuone,popup,noinsert  " always show popup menu
"
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation
"
" recognize anything in my .Postponed directory as a news article, and anything
" at all with a .txt extension as being human-language text [this clobbers the
" `help' filetype, but that doesn't seem to prevent help from working
" properly]:
"augroup filetype
"  autocmd BufNewFile,BufRead */.Postponed/* set filetype=mail
" autocmd BufNewFile,BufRead *.txt set filetype=human
"augroup END
"
"autocmd FileType mail set formatoptions+=t textwidth=72 " enable wrapping in mail
"autocmd FileType human set formatoptions-=t textwidth=0 " disable wrapping in txt
"
" for C-like  programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
"autocmd FileType c,cpp,java set formatoptions+=ro
"autocmd FileType c set omnifunc=ccomplete#Complete
"
" fixed indentation should be OK for XML and CSS. People have fast internet
" anyway. Indentation set to 2.
"autocmd FileType html,xhtml,css,xml,xslt set shiftwidth=2 softtabstop=2
"
" two space indentation for some files
"autocmd FileType vim,lua,nginx,sh set shiftwidth=2 softtabstop=2
"
" for CSS, also have things in braces indented:
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"
" add completion for xHTML
"autocmd FileType xhtml,html set omnifunc=htmlcomplete#CompleteTags
"
" add completion for XML
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"
" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
autocmd FileType c set noexpandtab shiftwidth=8 tabstop=8
""
" ensure normal tabs in assembly files
" and set to NASM syntax highlighting
autocmd FileType asm set noexpandtab shiftwidth=4 softtabstop=4 syntax=nasm
