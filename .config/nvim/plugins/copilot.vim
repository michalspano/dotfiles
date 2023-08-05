" Configuration for copilot.vim
" Docs: https://github.com/github/copilot.vim/blob/release/doc/copilot.txt

" Map Modifier<OPT>-Tab to accept the current suggestion
" <(S)-Tab> is already mapped to CocNext/Previous

imap <silent><script><expr> <M-Tab> copilot#Accept("\<CR>")
"let g:copilot_no_tab_map = v:true

" Which files should have the copilot completion on/off
" All files are on by default.
" Use :Copilot enable to enable copilot for the current buffer. 

let g:copilot_filetypes = {
      \ '*': v:true,
      \ 'xml': v:false,
      \ 'txt': v:false,
      \ }

" Map <C-J> and <C-K> to navigate the suggestions

imap <silent><script><expr> <C-J> copilot#Next()
imap <silent><script><expr> <C-K> copilot#Previous() 
