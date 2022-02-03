" ~/.config/nvim/plugins.vim
" List of all plugins of 'Plug'

call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'andweeb/presence.nvim'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'karb94/neoscroll.nvim'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'wakatime/vim-wakatime'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'github/copilot.vim'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'jiangmiao/auto-pairs'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'preservim/nerdcommenter'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----- 8< ----- 8< ----- 8< ----- 8< -----

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" ----------------------------
"        Plugin Setups
" ----------------------------

" NeoScroll
lua require('neoscroll').setup()

" NerdCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" Airline
let g:airline_theme='nord'