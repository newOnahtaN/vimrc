set nocompatible              " be iMproved, required
filetype off                  " required

"Settings - Line numbers, Tabs, Etc.
set number
set et               "Convert tabs to spaces - Expand Tab"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
syntax enable


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
autocmd vimenter * NERDTree

"Mappings
map <S-h> <c-w>w
map <S-w> gt
imap ii <Esc>
imap :w <Esc>:w
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
let mapleader=","


"For getting Visual Line to highlight on Windows Subystem for Linux -
"http://stackoverflow.com/questions/14315519/conemu-vim-syntax-highlight
set term=xterm
set t_co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
