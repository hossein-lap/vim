"  _  _ ___
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"
"
"" <Leader> key section
let mapleader='\'      " change the <Leader> Key
"
"" comment lines via - and uncomment via + 
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
"
"" switch to previous tab with _ 
noremap <silent> _ :tabprevious<CR> 
"
"" toggle paste mode
nmap <C-P> :set paste!<CR>
"
"" netrw toggle
nmap <Leader>ff  :24Lexplore<CR><C-w>w
"
"" toggle ltr support
nmap <leader>bd   :set termbidi!<CR>
"
"" move into pane
nmap <C-h>  <C-w>h
nmap <C-j>  <C-w>j
nmap <C-k>  <C-w>k
nmap <C-l>  <C-w>l
"
"" spelling check
map <leader>ss  :setlocal spell!<CR>
map <leader>se  :set spelllang=en_us<CR>
map <leader>sf  :set spelllang=fr<CR>
map <leader>sd  :set spelllang=da<CR>
"
"" force save exit multi panes
"map <Leader>zz    :xa!<CR>
"
"" force exit multi panes and don't save
"map <Leader>zq    :qa!<CR>
"
"" split long single line apart
map Q gqq
"
"" use control-c instead of escape
nmap <C-c> <Esc>
"
"" force write to file
cmap W w!
"
"" saving read-only files using sudo tee
cmap WW w !doas tee % > /dev/null

"" Completion:
" Spell:
imap <C-z> <C-x><C-s>

