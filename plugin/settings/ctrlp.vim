nnoremap <C-W><C-U> :CtrlPMRU<CR>
nnoremap <C-W>u :CtrlPMRU<CR>

nmap <C-W><C-P> :CtrlPTag<CR><C-\>w

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|tmp$\|public$\|log$\|node_modules$\|bower_components'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=20
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
