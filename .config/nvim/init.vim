" Personal Dotfiles - @michalspano
" ~/.config/nvim/init.vim

" Neovim base
if filereadable(expand('~/.config/nvim/base.vim'))
    source ~/.config/nvim/base.vim
endif

" ----- 8< ----- 8< ----- 8< ----- 8< -----

"" Neovim macros
if filereadable(expand('~/.config/nvim/macros.vim'))
    source ~/.config/nvim/macros.vim
endif

" ----- 8< ----- 8< ----- 8< ----- 8< -----

" Neovim plugins via 'Plug'
if filereadable(expand('~/.config/nvim/plugins.vim'))
    source ~/.config/nvim/plugins.vim
endif

" ----- 8< ----- 8< ----- 8< ----- 8< -----

" Setup theme
colorscheme nord
