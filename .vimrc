
" Automatic vim-plug installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set nu
set t_Co=256
set autoindent
set termguicolors
set spelllang=en
set tabstop=4
set shiftwidth=4
set smartcase
set wildmode=longest,list,full

let g:tex_flavor='latex'



" Fish configuration
if &shell =~# 'fish$'
    set shell=sh
endif

filetype plugin indent on

" End Fish configuration




" colorschemes
colorscheme gruvbox
set bg=dark

syntax enable
syntax on


" Shortcutting split navigation, saving a keypress
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'klen/python-mode'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-latex/vim-latex'
Plug 'dag/vim-fish'
Plug 'junegunn/vim-plug'

call plug#end()
