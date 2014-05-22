set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

let g:ctrlp_map = '<c-p>'
