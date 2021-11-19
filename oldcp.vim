"  _  _ ___    
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"              
"
" Global section with Makefile {{{
autocmd FileType * nnoremap <leader>cc :!make<CR>
"autocmd FileType * nnoremap <leader>fw :!make clean<CR>
"autocmd FileType * nnoremap <leader>fq :!make force<CR>
" }}}
"
" C++ section {{{
"" compile via \fe
autocmd FileType cpp nnoremap <leader>fe :!g++ %:r.cpp -o %:r<CR>
"" run via \fw
autocmd FileType cpp nnoremap <leader>fw :!./%:r<CR>
"" compile and run via \fq
autocmd FileType cpp nnoremap <leader>fq :!g++ %:r.cpp && ./%:r<CR>
" }}}
" C section {{{
"" compile via \fe
autocmd FileType c nnoremap <leader>fe :!gcc %:r.c -o %:r<CR>
"" run via \fw
autocmd FileType c nnoremap <leader>fw :!./%:r<CR>
"" compile and run via \fq
autocmd FileType c nnoremap <leader>fq :!gcc %:r.c && ./%:r<CR>
" }}}
"
" LaTeX section {{{
"" using pdflatex
"autocmd Filetype tex nnoremap <leader>fe :!pdflatex %:r.tex<CR>
"" using XeLaTeX
autocmd Filetype tex nnoremap <leader>fe :!xelatex %:r.tex<CR>
" }}}
" groff section {{{
"" ms macro to pdf
autocmd Filetype nroff nnoremap <leader>fe :!groff -ms -Tpdf %:r.ms > %:r.pdf<CR>
" }}}
" markdown section {{{
"" markdown to pdf via pandoc
"autocmd Filetype markdown nnoremap <leader>fe :!pandoc %:r.md -o %:r.pdf<CR>
autocmd Filetype markdown nnoremap <leader>fe :!mdp %<CR>
" }}}
"
" sent section {{{
autocmd Filetype text nnoremap <leader>fe :!sent -f FiraCode %<CR>
" }}}
"
" folding section {{{
" save via zs
autocmd Filetype *  nnoremap zs :mkview<CR>  
" restore via zr
autocmd Filetype *  nnoremap zr :loadview<CR>
" }}}
"
" execute Python programs {{{
autocmd FileType python nnoremap <leader>fe :!xterm -T RunPrompt -e 'python %:r.py ; echo "" ; read -p "Press Enter to Exit" dumppvarr'<CR><CR>
" }}}
" bash section {{{
" run via bash
autocmd Filetype sh nnoremap <leader>fe :!bash %<CR>
" run via dash
autocmd Filetype sh nnoremap <leader>fe :!dash %<CR>
" }}}
