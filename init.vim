call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'savq/melange'
Plug 'davidhalter/jedi'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

""" Main Configurations
filetype plugin indent on
set foldenable
set foldmethod=indent 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wildmode=longest,list,full wildmenu
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set textwidth=0
set hidden
set number
set title
syntax on
""" set hot Keys 
let mapleader=","
inoremap jj <esc> 

""" Configing expanding of tabs for file types
au BufRead,BufNewFile *.py set expandtab

"""" Theme
set termguicolors
colorscheme melange

""" Set up plugins 

"""lightline 
set laststatus=2 
set noshowmode 

"""Coc.VIM
function! CheckBackspace() abort 
    let col = col('.') -1 
    return !col || getline('.')[col -1] =~# '\s'

endfunction 

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr><cr> coc#pum#visible() ? coc#pum#confirm() : "\<cr>"
inoremap <silent><expr> <c-@> coc#refresh()

""" Surpress warning for COC.NVIM
inoremap <silent><expr> <c-space> coc#refresh()
let g:coc_disable_startup_warning = 1
