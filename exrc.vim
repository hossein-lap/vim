""              
"   _  _ ___    
"  | || | __|   Hossein Esmailzadeh
"  | __ | _|    Email:  hosaidenpwr@protonmail.com
"  |_||_|___|   Matrix: hosaidenpwd:matrix.org
"               
"
" alert: 
" ~/.exrc file is only for the VI text editor
" and it's blank-space senstive
" you can't have any blank line
"
" --------------------------
"
set nu          " show line numbers
"
set showmatch   " show matching brackets
"
set showmode    " show current mode in status line
"
set tabstop=2   " set Tab width
"
" Define the point at which lines wrap in vanilla mode
set wrapmargin=10
"
" --------------------------
" --------------------------
" Abbreviations
"
ab het the
ab teh the
ab fsf Free Software Foundation
" --------------------------
" --------------------------
" KeyBinding
"
" control-b backward character ala emacs
map  h            
" control-f forward character ala emacs
map  l            
" control-t twiddle chars ala emacs
map  hxpl					
"
" --------------------------
" --------------------------
"
""
"set list
""
" the point at which lines wrap in vanilla mode
" Hide Line Numbers
"set nonu
"
" F5 - invoke fmt
" map #5 !}fmt
"
" F2 - invoke ispell
map #2 :w
:!ispell -x %
:e!
"
" Classic vi user community macros for completion 
" based on previous or next instances of a word
" in the current buffer that matches the current 
" substring
"
"map!  a. hbmmi?\<2h"zdt.@z
"ywmx`mP xi
"map!  a. hbmmi/\<2h"zdt.@z
"ywmx`mP xi
"
" --------------------------
"
""
