" ~/.config/nvim/base.vim
" Base Neovim Preferences

set encoding=utf-8
set number relativenumber
set fileformat=unix
syntax enable

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set cursorline
set cursorcolumn

set noswapfile
set scrolloff=8

nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
