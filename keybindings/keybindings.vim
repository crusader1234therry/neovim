" Quit 
nnoremap <C-q> :q<CR>
" Normal Save
nnoremap <C-s> :w<CR>

" Split Bindings
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l
" Use vim keys to move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use Alt + Vim keys to resize Windows
nnoremap <silent> <C-M-j>    :resize -2<CR>
nnoremap <silent> <C-M-k>    :resize +2<CR>
nnoremap <silent> <C-M-h>    :vertical resize -2<CR>
nnoremap <silent> <C-M-l>    :vertical resize +2<CR>

map <F1> nop 

" For NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <esc> :noh<CR>

" Goyo
nnoremap <C-g> :Goyo<CR>

nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>v :e ~/.config/nvim/init.vim<CR>

nnoremap Q <nop>

" Tabs
nmap te :tabedit<Return>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Select all
nmap <C-a> gg<S-v>G
