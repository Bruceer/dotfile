syntax on

" Part1 Common Setting
" 
set number
set ruler
set showmatch
set hlsearch
set background=dark
set t_Co=256

" Part2 Key Mapping
let mapleader=','
inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>
"" noremap <c-h> <c-w>h
"" noremap <c-l> <c-w>l
"" noremap <c-k> <c-w>k
"" noremap <c-j> <c-w>j
"" NerdTree config
map ll :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Part3 Vundle Management
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tomasr/molokai'       " molokai
Plugin 'godlygeek/tabular' 
Plugin 'plasticboy/vim-markdown' 
Plugin 'scrooloose/nerdtree' "NerdTree
call vundle#end()             " required
filetype plugin indent on     " required

colorscheme molokai
"" colorscheme solarized
