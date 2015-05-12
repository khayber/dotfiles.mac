" Ken's VIMRC file

syntax on

set nocompatible
set backspace=2

set laststatus=2
set encoding=utf-8

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set t_Co=256
colorscheme Molokai

set tabstop=4
set shiftwidth=4

autocmd Filetype python setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype java   setlocal ts=4 sts=4 sw=4 expandtab

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

