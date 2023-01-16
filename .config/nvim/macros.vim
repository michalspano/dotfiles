" ~/.config/nvim/macros.vim
" Macros Neovim configuration

nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+

nnoremap <silent> <F3> :set spell!<CR>
inoremap <silent> <F3> <C-O>:set spell!<CR>

" zathura + pandoc + markdown commands
nnoremap <F4> :silent !pandoc -s % -o /tmp/%:r.pdf && zathura /tmp/%:r.pdf &>/dev/null &<CR>
nnoremap <F5> :silent !pandoc -s % -o /tmp/%:r.pdf <CR>
