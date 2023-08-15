" Configuration for copilot.vim
" Docs: https://github.com/github/copilot.vim/blob/release/doc/copilot.txt

" A helper function to toggle copilot on/off
function CopilotToggle()
  if exists('g:copilot_enabled') && g:copilot_enabled
    let g:copilot_enabled = v:false
    echo "Copilot disabled"
  else
    let g:copilot_enabled = v:true
    echo "Copilot enabled"
  endif
endfunction

" Map <F12> to toggle copilot on/off
nnoremap <silent><script> <F12> :call CopilotToggle()<CR>

" Map Modifier<OPT>-Tab to accept the current suggestion
" <(S)-Tab> is already mapped to CocNext/Previous

imap <silent><script><expr> <M-Tab> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

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
