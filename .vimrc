
set background=dark

set nu

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
syntax on
filetype indent on

" Tagbar
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

" Ale
let g:ale_linters={'sh': ['shellcheck'], 'cmake': ['cmake-lint'], 'python': ['pylint']}
" let g:ale_fixers={'cmake-format', 'black'}
