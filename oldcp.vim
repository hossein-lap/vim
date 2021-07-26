" important option that should already be set!
set hidden
"
" " compiling with Makefile
autocmd FileType c,cpp nnoremap <leader>fq :!echo && make<CR>
autocmd FileType c,cpp nnoremap <leader>fw :!echo && ./ouput<CR>
autocmd FileType c,cpp nnoremap <leader>fe :!echo && make && ./output<CR>
"
"autocmd FileType c,cpp nnoremap <leader>fw :!xterm -T RunPrompt -e 'make ; echo "" ; read -p "Press Enter to Exit" dumppvarr'<CR><CR>
"autocmd FileType c,cpp nnoremap <leader>fe :!xterm -T RunPrompt -e 'make ; ./output ; echo "" ; read -p "Press Enter to Exit" dumppvarr'<CR><CR>
"autocmd FileType c,cpp nnoremap <leader>fr :!xterm -T RunPrompt -e './output ; echo "" ; read -p "Press Enter to Exit" dumppvarr'<CR><CR>
" "
" auto save and compile groff/LaTeX document
autocmd Filetype tex,nroff nnoremap <leader>fe :!echo && make<CR>
"
autocmd Filetype *  nnoremap zs :mkview<CR>
autocmd Filetype *  nnoremap zr :loadview<CR>
"
" "
" execute Python programs
autocmd FileType python nnoremap <leader>fe :!xterm -T RunPrompt -e 'python %:r.py ; echo "" ; read -p "Press Enter to Exit" dumppvarr'<CR><CR>
"
