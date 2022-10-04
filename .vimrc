
set background=dark

set nu

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
syntax on
filetype indent on
set backspace=indent,eol,start
set matchpairs=(:),{:},[:],<:>

let mapleader=" "

" Filetypes
au! BufRead,BufNewFile *.toolchain set filetype=cmake

" Tagbar
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree | wincmd p

" Ale
let g:ale_linters={'sh': ['shellcheck'], 'cmake': ['cmake-lint'], 'python': ['pylint'], 'cpp': ['clangd']}
let g:ale_fixers={'cmake': ['cmakeformat'], 'python': ['black'], 'cpp': ['clang-format']}
nmap <F9> :ALEFix<CR>
