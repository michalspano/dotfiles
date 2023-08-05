" ~/.config/nvim/macros.vim
" Macros Neovim configuration

nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+

nnoremap <silent> <F2> :set spell!<CR>
inoremap <silent> <F2> <C-O>:set spell!<CR>

" zathura + pandoc + markdown commands
" WIP: currently deprecated, the Amethyst window manager struggles to
" recognize plain `zathura`, so a wrapper script is used instead.
" nnoremap <F4> :silent !pandoc -s % -o /tmp/%:t:r.pdf && zathura /tmp/%:t:r.pdf &>/dev/null &<CR>

" Export via pandoc to PDF (to /tmp/<basename>.pdf)
nnoremap <F3> :silent !pandoc -s % -o /tmp/%:t:r.pdf<CR>

" Open current in zathura (needs to be exported via <F5> first)
nnoremap <F4> :silent !zathura /tmp/%:t:r.pdf &>/dev/null &<CR>
