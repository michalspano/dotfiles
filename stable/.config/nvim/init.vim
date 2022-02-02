" Personal Dotfiles - @michalspano
" ~/.config/nvim/init.vim

set encoding=utf-8
set number relativenumber
syntax enable

" Indentation options
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" PLUG - Plugin manager

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'andweeb/presence.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'wakatime/vim-wakatime'

call plug#end()

" Setup theme
colorscheme nord

" Setup smoothscroll
lua require('neoscroll').setup()
