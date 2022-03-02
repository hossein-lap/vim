"  _  _ ___    
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"              

autocmd! BufWritePost *note_*.md silent !NoteBuild.sh %:p
