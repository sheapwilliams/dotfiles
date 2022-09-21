
set background=dark

set nu

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Tagbar
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
