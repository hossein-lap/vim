"  _  _ ___    
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"              
"
" Global Section {{{
" Makefile:
au FileType * nnoremap <leader>cc :!make<CR>
au FileType * nnoremap <leader>cx :!make force<CR>
" Git:
au FileType * nnoremap <leader>gs :!git status -s<CR>
au FileType * nnoremap <leader>gl :!git log --oneline --stat --graph --all<CR>
au FileType * nnoremap <leader>ga :!git add %<CR>
au FileType * nnoremap <leader>gc :!git commit<CR>
" }}}
"
" C++ section {{{
"" compile via \fe
autocmd FileType cpp nnoremap <leader>fe :!g++ % -o %:r<CR>
"" run via \fw
autocmd FileType cpp nnoremap <leader>fw :!./%:r<CR>
"" compile and run via \fq
autocmd FileType cpp nnoremap <leader>fq :!g++ % && ./%:r<CR>
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
"" mspdf macro to pdf
autocmd Filetype nroff nnoremap <leader>fe :!groff -mspdf -Tpdf %:r.ms > %:r.pdf<CR>
" }}}
" markdown section {{{
"" markdown to pdf via pandoc
"autocmd Filetype markdown nnoremap <leader>fe :!pandoc %:r.md -o %:r.pdf<CR>
autocmd Filetype markdown,vimwiki nnoremap <leader>fe :!glow -p %<CR>
autocmd Filetype markdown,vimwiki nnoremap <leader>fw :!mdp %<CR>
" }}}
" rmarkdown section {{{
"" markdown to pdf via pandoc
"autocmd Filetype markdown nnoremap <leader>fe :!pandoc %:r.md -o %:r.pdf<CR>
autocmd Filetype rmd nnoremap <leader>fe :!Rscript -e "rmarkdown::render('%')"<CR>
"autocmd Filetype rmd nnoremap <leader>fw :!mdp %<CR>
" }}}
" sent section {{{
autocmd Filetype text nnoremap <leader>fe :!sent -f 'Liberation Serif' % &<CR>
" }}}
"
"" folding section {{{
""" save via zs
"autocmd Filetype *  nnoremap zs :mkview<CR>  
""" restore via zr
"autocmd Filetype *  nnoremap zr :loadview<CR>
"" }}}
"
" execute Python programs {{{
autocmd FileType python nnoremap <leader>fe :!python3 %:p<CR>
" }}}
" execute Lua programs {{{
autocmd FileType lua nnoremap <leader>fe :!lua5.4 %:p<CR>
" }}}
"
" shell {{{
autocmd FileType sh nnoremap <leader>fe :!bash %:p<CR>
autocmd FileType sh nnoremap <leader>fw :!dash %:p<CR>
autocmd FileType csh nnoremap <leader>fq :!tcsh %:p<CR>
" }}}

