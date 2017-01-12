" Search API docs for query you type in:
nnoremap <Leader>k :Dasht<Space>

" Search API docs for word under cursor:
nnoremap <silent> <Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')])<Return>

" Search API docs for the selected text:
vnoremap <silent> <Leader>K y:<C-U>call Dasht(getreg(0))<Return>

let g:dasht_filetype_docsets = {
      \ 'html': ['css', 'js', 'bootstrap', 'jquery'],
      \ 'javascript': ['javascript', 'react'],
      \ 'coffee': ['javascript', 'jquery', 'react']
      \ }
