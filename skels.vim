"
"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"                                     "
""" skel templates
"" add ready-to-use text by .ext
"
" scripting
nnoremap ,make :-1read $HOME/.vim/.skel/skel.makefile<CR>Go
nnoremap ,sh   :-1read $HOME/.vim/.skel/skel.sh<CR>Go
nnoremap ,py   :-1read $HOME/.vim/.skel/skel.py<CR>Go

" markup
nnoremap ,html :-1read $HOME/.vim/.skel/skel.html<CR>10jo
nnoremap ,md   :-1read $HOME/.vim/.skel/skel.md<CR>Go
nnoremap ,ms   :-1read $HOME/.vim/.skel/skel.ms<CR>Go
nnoremap ,tex  :-1read $HOME/.vim/.skel/skel.tex<CR>:30<CR>i
nnoremap ,ptex  :-1read $HOME/.vim/.skel/skel.p.tex<CR>:31<CR>i
"nnoremap ,trep :-1read $HOME/.vim/.skel/skel.tex<CR>
"nnoremap ,tlet :-1read $HOME/.vim/.skel/skel.tex<CR>

" programming
nnoremap ,cpp  :-1read $HOME/.vim/.skel/skel.cpp<CR>10j8wi
nnoremap ,c    :-1read $HOME/.vim/.skel/skel.c<CR>9jwo
nnoremap ,hs   :-1read $HOME/.vim/.skel/skel.hs<CR>

" template
nnoremap ,intr :-1read $HOME/.vim/.skel/skel.intro<CR>Go
nnoremap ,rm   :-1read $HOME/.vim/.skel/skel.rm<CR>2jA
nnoremap ,obc  :-1read $HOME/.vim/.skel/skel.openbox<CR>3wea
