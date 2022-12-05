"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"                
"                
"" add ready-to-use text by .ext
let g:skelkey=','
"
exe "nnoremap" .. g:skelkey .. "make :-1read ~/.vim/templates/skel.mk<CR>G"
exe "nnoremap" .. g:skelkey .. "sh   :-1read ~/.vim/templates/skel.sh<CR>G"
exe "nnoremap" .. g:skelkey .. "py   :-1read ~/.vim/templates/skel.py<CR>G"
exe "nnoremap" .. g:skelkey .. "lua  :-1read ~/.vim/templates/skel.lua<CR>G"
"
exe "nnoremap" .. g:skelkey .. "html :-1read ~/.vim/templates/skel.html<CR>8j3w"
exe "nnoremap" .. g:skelkey .. "md   :-1read ~/.vim/templates/skel.md<CR>G"
exe "nnoremap" .. g:skelkey .. "rmd   :-1read ~/.vim/templates/skel.rmd<CR>G"
exe "nnoremap" .. g:skelkey .. "ms   :-1read ~/.vim/templates/skel.ms<CR>G"
"
exe "nnoremap" .. g:skelkey .. "tex  :-1read ~/.vim/templates/skel.tex<CR>:155<CR>"
"
exe "nnoremap" .. g:skelkey .. "C    :-1read ~/.vim/templates/skel.c<CR>"
exe "nnoremap" .. g:skelkey .. "cpp  :-1read ~/.vim/templates/skel.cpp<CR>"
"               
"exe "nnoremap" .. g:skelkey .. "int  :-1read ~/.vim/templates/skel.intro<CR>"
"               
