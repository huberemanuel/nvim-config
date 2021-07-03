call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'w0rp/ale'
Plug 'jmcantrell/vim-virtualenv'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme gruvbox
set background=dark

set number
set relativenumber

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
nmap <C-n> :NERDTreeToggle<CR>
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>

let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'*': [], 'python': ['isort', 'black']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

