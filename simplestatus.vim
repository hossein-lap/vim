"
"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"                                   "
"" status line section
" git status function
"
"function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction
"function! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction 
"
"function! CharCount()
"   return system("wc -m $ 2>/dev/null")
"endfunction
"function! PrintOutCount()
"   let l:CharOutCount = CharCount()
"   return strlen(l:CharOutCount) > 0?'  '.l:CharOutCount.' ':''
"endfunction 
"
"function! CharCount()
"  return system("wc -m % 2> /dev/null | awk '{print $1}' ")
"endfunction
"function! ShowCount()
"  let l:countcharacters = CharCount()
"  return strlen(l:countcharacters) > 0?'  '.l:countcharacters.' ':''
"endfunction
"
" to display current mode in status line
let g:currentmode={                
       \ 'n'  : 'nor',
       \ 'v'  : 'vis',
       \ 'V'  : 'v.l',
   \ "\<C-V>" : 'v.b',
       \ 'i'  : 'ins',
       \ 'R'  : 'rep',
       \ 'Rv' : 'v.r',
       \ 'c'  : 'cmd',
       \}
"
"" config section
set laststatus=2                      " show status line
set statusline=                       " status line config
set statusline+=%#StatusLine#         " color-scheme
set statusline+=\ \
set statusline+=\ \                   " blank space
set statusline+=%{toupper(g:currentmode[mode()])}\       " show current mode
set statusline+=\ \»                  " blank space
set statusline+=\ \                   " blank space
set statusline+=%f                    " Full path
set statusline+=\                     " blank space
set statusline+=%=                    " Switch to the right side
set statusline+=\                     " blank space
set statusline+=%r                    " read-only file symbol
set statusline+=\ \                   " blank space
set statusline+=%c                    " cursor current position
set statusline+=\ \                   " blank space
set statusline+=%l\,%L                " current line:cursor position
set statusline+=\ \                   " blank space
set statusline+=\-%Y\-                " file type
set statusline+=\ \                   " blank space
set statusline+=%{strftime('%H:%M')}  " show time 
set statusline+=\                     " blank space
set statusline+=\[%M\]                " modification symbol
set statusline+=\                     " blank space
"
