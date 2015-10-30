" vimrc
set showtabline=2
set nobomb
set title
set nobackup        " no backup file
set noswapfile      " no swap file

set list listchars=tab:»·,trail:·

set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set ruler
"set cursorline
"set cursorcolumn
set pastetoggle=<F9>
set hlsearch
set incsearch

" disable splashscreen
set shortmess+=I

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" Setting Highlight color
"hi CursorColumn   ctermbg=black
"hi CursorLine     ctermbg=black
hi LineNr         ctermbg=23 ctermfg=73
hi Normal ctermbg=none
hi TabLineSel ctermfg=23 ctermbg=73
hi TabLine ctermfg=23
hi TabLineFill ctermfg=23

" coffee indent fold
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.coffee.erb setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee.erb setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

au BufNewFile,BufRead *.html.slim set syntax=slim

" Javascript indent
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

"CSS,SCSS,SASS
au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.scss setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.sass setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.styl setl shiftwidth=2 expandtab softtabstop=2 tabstop=2


au BufNewFile,BufRead *.scss set syntax=scss
au BufNewFile,BufRead *.sass set syntax=sass
au BufNewFile,BufRead *.styl set syntax=sass

setlocal omnifunc=syntaxcomplete#Complete

let g:tagbar_sort = 'Order'

let g:tagbar_type_css = {
    \ 'ctagstype' : 'css',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'i:identities'
    \ ],
    \ }

let g:tagbar_type_scss = {
    \ 'ctagstype' : 'scss',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'm:mixing',
    \ 'i:identities'
    \ ],
    \ }

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings',
        \ 'v:variables'
    \ ]
\ }

"let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
"let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
let g:syntastic_coffee_coffeelint_args = "--csv"
let g:syntastic_coffee_checkers = []
let g:neocomplete#force_overwrite_completefunc = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:syntastic_html_checkers = [] " Disable html checker

let tern#is_show_argument_hints_enabled = 0

