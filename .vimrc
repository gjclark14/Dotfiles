set nu
set t_Co=256
set autoindent
set termguicolors
set spelllang=en
set tabstop=4
set shiftwidth=4
set smartcase
"set foldmethod=indent
"set foldlevel=99
set wildmode=longest,list,full
"filetype plugin on
" filetype indent on
let g:tex_flavor='latex'

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" Changes cwd when moving along nerdtree
" let g:NERDTreeChDirMode = 3
"
" set shell=/bin/bash

if &shell =~# 'fish$'
    set shell=sh
endif

" setlocal spell

colorscheme base16-eighties
set bg=dark

syntax enable
syntax on

" au VimEnter *  NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" gets rid of trailing ws
autocmd BufWritePre * %s/\s\+$//e

" sets cwd to wherever the file is open
autocmd BufEnter * lcd %:p:h

set splitbelow splitright

" Shortcutting split navigation, saving a keypress
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"VUNDLE
set nocompatible              " required
filetype off                  " required


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'klen/python-mode'
" ycm for code completion
Plugin 'valloric/youcompleteme'
Plugin 'bling/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'dag/vim-fish'
Plugin 'vim-latex/vim-latex'

call vundle#end()            " required
filetype plugin indent on    " required
