"  _  _ ___    
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"              

autocmd! BufWritePost *note_*.ms silent !~/.local/dev/hossein-lap/scripts/note-build.sh %:p
