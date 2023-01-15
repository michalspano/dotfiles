let g:vimtex_view_method = 'zathura'
let g:vimtex_tex_flavor = 'latex'

" use zethura to open the tex output file (pdf)
" use terminal to open the pdf file, so it doe snot block neovim
" Use F1 to invoke the command
nnoremap <silent> <F1> :silent !zathura %:r.pdf &>/dev/null &<CR>

" Control-y mapped to the command to compile the tex file (via vimtex)
nnoremap <silent> <C-Y> :VimtexCompile<CR>
