" Ken's VIMRC file

syntax on

"set t_ti=""

set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set nocompatible

set t_Co=256
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme Tomorrow-Night-Bright
colorscheme Molokai

set tabstop=4
set shiftwidth=4

"set mouse=a
set wildmenu

set noincsearch
set nohls

set autoindent
set smartindent

set scrolloff=2

"set autochdir
set ruler
set hidden
set number

set clipboard=unnamedplus

"set list
"set listchars=tab:♢\ ,eol:¶
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

au BufWritePost .vimrc source $MYVIMRC

