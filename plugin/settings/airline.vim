"Custome airline setting
"
let g:airline_symbols = {}
let g:rigel_airline = 1
let g:airline_theme = 'rigel'
set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr= ''
let g:airline_symbols.reaonly= ''

"let g:airline_linecolumn_prefix = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 2
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 0

" enable tabline
let g:airline#extensions#tabline#enabled = 1
" " set left separator
let g:airline#extensions#tabline#left_sep = ''
" " set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = ''
" " show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1"
