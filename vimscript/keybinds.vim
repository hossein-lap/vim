"  _  _ ___
" | || | __|   H
" | __ | _|    A
" |_||_|___|   P
"
"
" <Leader> key section {{{
let mapleader='\'      " change the <Leader> Key
" }}}
" comment lines via - and uncomment via + {{{
"" new-style
"noremap <silent> - :<C-B>silent <C-E>s;\v^(\s*);\1<C-R>=escape(b:comment_leader,'\ ')<CR><CR>:nohlsearch<CR>
"noremap <silent> + :<C-B>silent <C-E>s;\v^(\s*)<C-R>=escape(b:comment_leader,'\/')<CR>;\1;<CR>:nohlsearch<CR>
"" old-style
noremap <silent> - :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> + :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
" }}}
" Switch to next/previous buffer with <C-n> and <C-b> {{{
noremap <silent> <C-n> :bnext<CR> 
noremap <silent> <C-b> :bprevious<CR> 
" }}}
" toggle paste mode {{{
nmap <C-P> :set paste! nu! list!<CR>
"nmap <C-P> :set list!<CR>
" }}}
" netrw toggle {{{
nmap <Leader>ff  :24Lexplore<CR><C-w>w
" }}}
"" toggle ltr support "{{{
"nmap <leader>bd   :set termbidi!<CR>
" }}}
" move into pane {{{
nmap <C-h>  <C-w>h
nmap <C-j>  <C-w>j
nmap <C-k>  <C-w>k
nmap <C-l>  <C-w>l
" }}}
" spelling check {{{
nmap <leader>ss  :setlocal spell!<CR>
nmap <leader>se  :set spelllang=en_us<CR>
nmap <leader>sf  :set spelllang=fr<CR>
nmap <leader>sd  :set spelllang=de<CR>
" }}}
"" force save exit multi panes {{{
"map <Leader>zz    :xa!<CR>
" }}}
"" force exit multi panes and don't save {{{
"map <Leader>zq    :qa!<CR>
" }}}
" split long single line apart {{{
nmap Q gqq
" }}}
"" use control-c instead of escape {{{
imap <C-c> <Esc>
" }}}
"" force write to file {{{
"cmap W w!
" }}}
" saving read-only files using doas tee {{{
cmap WW w !sudo tee % > /dev/null
" }}}
" Spell {{{
imap <C-z> <C-x><C-s>
" }}}
" Q to qa {{{
cmap Q qa
" }}}
"" ref to reaload vim config "{{{
"nnoremap <leader>rr :source ~/.vim/vimrc<CR>
" }}}
" disable search highlight temporarily {{{
nnoremap <silent> <C-l> :set hlsearch!<CR>
" }}}
