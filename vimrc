syntax on

" Part1 Common Setting
" 
set number
set ruler
set showmatch
set hlsearch
if has('gui_running')
    set background=light
else
    set background=dark
    set t_Co=256
endif

" Part2 Key Mapping
let mapleader=','
inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
"" NerdTree config
map // :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

" Part3 Vundle Management
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tomasr/molokai'       " molokai
Plugin 'liuchengxu/space-vim-theme'
Plugin 'godlygeek/tabular' 
Plugin 'plasticboy/vim-markdown' 
Plugin 'scrooloose/nerdtree'  " NerdTree
call vundle#end()             " required
filetype plugin indent on     " required

"" colorscheme molokai
colorscheme space_vim_theme


