let g:vimtex_view_method = 'zathura'
let g:vimtex_tex_flavor = 'latex'

" Control-y mapped to the command to compile the tex file (via vimtex)
nnoremap <silent> <C-Y> :VimtexCompile<CR>

" Ignore quickfix opening on a warning
let g:vimtex_quickfix_open_on_warning = 0
