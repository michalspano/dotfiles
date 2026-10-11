" ~/.config/nvim/plugins.vim

" List of all plugins via 'Plug'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

call plug#begin('~/.vim/plugged')

Plug 'nordtheme/vim'
Plug 'andweeb/presence.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'github/copilot.vim'
Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons' 
Plug 'voldikss/vim-floaterm'
Plug 'https://github.com/preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ellisonleao/glow.nvim'
Plug 'lervag/vimtex'
Plug 'kwakzalver/duckytype.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovimhaskell/haskell-vim'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

call plug#end()

" DuckyType
lua require('duckytype').setup{}

" nerdtree
if filereadable(expand('~/.config/nvim/plugins/nerd-tree.vim'))
    source ~/.config/nvim/plugins/nerd-tree.vim
endif

" nerdcommenter
if filereadable(expand('~/.config/nvim/plugins/nerd-commenter.vim'))
    source ~/.config/nvim/plugins/nerd-commenter.vim
endif

" vim-floaterm
if filereadable(expand('~/.config/nvim/plugins/floaterm.vim'))
    source ~/.config/nvim/plugins/floaterm.vim
endif

" vim-airline
if filereadable(expand('~/.config/nvim/plugins/airline.vim'))
    source ~/.config/nvim/plugins/airline.vim
endif

" vim-tex
if filereadable(expand('~/.config/nvim/plugins/vimtex.vim'))
    source ~/.config/nvim/plugins/vimtex.vim
endif

" vim-coc
if filereadable(expand('~/.config/nvim/plugins/coc.vim'))
    source ~/.config/nvim/plugins/coc.vim
endif

" vim-copilot
if filereadable(expand('~/.config/nvim/plugins/copilot.vim'))
    source ~/.config/nvim/plugins/copilot.vim
endif

" nvim-telescope
if filereadable(expand('~/.config/nvim/plugins/telescope.vim'))
    source ~/.config/nvim/plugins/telescope.vim
endif
