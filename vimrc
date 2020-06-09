set nocompatible              " be iMproved, required
filetype on                   " required
set number
" set the runtime path to include Vundle and initialize
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
let mapleader = " "
" Vundle Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'junegunn/fzf'
	Plugin 'preservim/nerdtree'
	Plugin 'morhetz/gruvbox'
	Plugin 'pangloss/vim-javascript'
	Plugin 'vim-polyglot'
	Plugin 'mxw/vim-jsx'
	Plugin 'dense-analysis/ale'
	Plugin 'tpope/vim-surround'
call vundle#end()

" ===============MAPPINGS================
colorscheme gruvbox
set background=dark
"autocmd vimenter * NERDTree   (Automatically start nerd tree when opening Vim)
" Map Ctrl + n to Toggle NerdTree
map <leader>r :NERDTreeFind<CR>
map<C-n> :NERDTreeToggle<CR>
map<silent> <leader>o :FZF<CR>
" ===============SETTINGS================
syntax on
set autoread " Load files changed ouside VIM
set cursorline

let g:ale_fixers = {
\	'javascript' : ['prettier', 'eslint'],
\	'*' : ['remove_trailing_lines', 'trim_whitespace'],
\}

" Fix files automatically on save
let g:ale_fix_on_save = 1

" ===============SPLITS=====================
" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Open new splits easily
map vv <C-W>v
map ss <C-W>s
map Q  <C-W>q
