"   _  _ ___    
"  | || | __|   H
"  | __ | _|    A
"  |_||_|___|   P
"               
"                                     
"set number                       " show numbers in the left
set nowrap                       " disable line wraping
"                                  
set nocp                         " disable vi compatiblities
"  if version >= 600              " check the vim version
"    filetype plugin indent on    " enable finding file type 
"  endif                          " -
"                                " 
"syntax enable                    " colorful texts
"                                  
"set wildmenu                     " enable popup menu
"set wildmode=longest:list,full   " -
"set showcmd                      " show enterd key 
"set showmode                     " diable showing mode in the old way
"
"set autochdir             " change current dir to file's dir
"                                 
"" tab settings           
set tabstop=4             " tap size in this case is (2)
set expandtab             " insert spaces instead of tab
set shiftwidth=4          " 
set softtabstop=4         " 
"                          
"set autoindent            " enable line indentaion
"set smartindent           " smart indent enable
"set cindent               " more 
syntax off
set showmatch             " show match brackets, parantesies, etc..
"                          
set ls=1
"
set encoding=utf-8        " set encoding to utf-8
"
set hlsearch              " enable search highlighting
"                                      
set bs=2                  " makes the backspace work functinal
"                                      
"set clipboard=unnamed         " set clipboard buffer
set clipboard=unnamedplus     " -
"                              
set mouse=a                   " enable mouse function 
"                              
set nobackup                  " disable auto backup
"                              
"set scrolloff=5               " start srolling from 5 lines to the end
"                              
"set t_Co=256                  " set vim to use 256 colors
"set background=dark           " use the dark theme
"                              
"set cursorline                " highlight the cursor vertically
"set cursorcolumn              " highlight the cursor horizontally
"                              
"" show qss highlighting like css:    
"au BufRead,BufNewFile *.qss set filetype=css
"au BufRead,BufNewFile *.vifm set filetype=vim
"au BufRead,BufNewFile *.vi set filetype=vim
"au BufRead,BufNewFile *.xml set filetype=html
"                                     
"" auto comment and uncomment with - and +
"autocmd FileType sh,ruby,python,conf,make,yaml,zsh,csh  let b:comment_leader = '#'
"autocmd FileType c,cpp,java,scala,json          let b:comment_leader = '//'
"autocmd FileType vim,vifm             let b:comment_leader = '"'
"autocmd FileType haskell,lua          let b:comment_leader = '--'
"autocmd FileType tex                  let b:comment_leader = '%'
"autocmd FileType nroff                let b:comment_leader = '\"'
"
""  netrw config
"let g:netrw_alto        = 0
"let g:netrw_banner       = 0                  
"let g:netrw_liststyle    = 3
"let g:netrw_browse_split = 4
"let g:netrw_winsize      = 80
"let g:netrw_preview      = 2
"let g:netrw_menu         = 1
"let g:netrw_altv         = 1
"
"" split char
"set fillchars+=vert:\|
"
""" keybinding
"
""" code folding              " z-f   create
"set foldmethod=manual        " z-a   toggle
set foldmethod=marker         " z-d   delete
set nofoldenable              "" custom keybind ->
set foldnestmax=15            " z-s   save 
set foldlevel=0               " z-z   restore
"
"" open all splits in the bottom-h and right
set splitbelow
set splitright
