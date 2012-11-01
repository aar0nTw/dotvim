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
colorscheme solarized
set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Tabe open
noremap TT :tabe<Space>

"NERDTree
map <C-o>   :NERDTreeToggle<CR>

"TagBar 
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"SwitchTab
imap jj <ESC>

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG

let mapleader = ","
