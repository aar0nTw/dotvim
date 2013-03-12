set encoding=utf-8
call pathogen#infect()
filetype on
filetype indent on
filetype plugin on
syntax enable
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'
colorscheme wombat256
set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoread
let g:SuperTabDefaultCompletionType="context"
"Tabe open
noremap TT :tabe<Space>

"NERDTree
map <C-o>   :NERDTreeToggle<CR>

"TagBar 
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"SwitchTab
imap jj <ESC>
imap kk <ESC> 

setlocal omnifunc=syntaxcomplete#Complete

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <F2> :CoffeeLint<CR>

" select ALL
map <C-A> ggVG

let mapleader = ","

" coffee indent fold
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

highlight Normal ctermbg=none
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'
