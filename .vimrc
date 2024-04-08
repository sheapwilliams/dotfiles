
set background=dark

set nu

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set hlsearch
syntax on
filetype indent on
set backspace=indent,eol,start
set matchpairs=(:),{:},[:],<:>
set noswapfile

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
let g:ale_linters={'sh': ['shellcheck'], 'cmake': ['cmake-lint'], 'python': ['ruff'], 'cpp': ['clangd', 'clangtidy']}
let g:ale_fixers={'cmake': ['cmakeformat'], 'python': ['ruff_format'], 'cpp': ['clang-format']}
let g:ale_cpp_clangd_executable = '/usr/bin/clangd-17'
let g:ale_cpp_clangtidy_executable = '/usr/bin/clang-tidy-17'
let g:ale_c_clangformat_executable = '/usr/bin/clang-format-17'
let g:ale_cpp_build_dir_names = ['build', 'build-debug']
let g:ale_c_build_dir_names = ['build', 'build-debug']
nmap <F9> :ALEFix<CR>

" YCM
let g:ycm_clangd_binary_path = exepath("clangd-17")

" gutentags_plus
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root', '.git']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1 " change focus to quickfix window after search (optional).
let g:gutentags_plus_nomap = 1
let g:gutentags_define_advanced_commands = 1
let g:gutentags_gtags_extra_args = "--skip-unreadable"
"let g:gutentags_trace = 1

noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>gz :GscopeFind z <C-R><C-W><cr>

silent! helptags ALL
