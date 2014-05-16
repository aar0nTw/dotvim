call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
set ff=unix
syntax on
filetype on
filetype plugin indent on
set t_Co=256
set backspace=2
set wildmenu
"colors solarized
colors hemisu
"colors smyck
"colors wombat256
"colors railscasts


" Leader Key
let mapleader = ","
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'
let g:SuperTabDefaultCompletionType="context"

set background=dark
set autoread
" Other Setting in plugin/settings/setting.vim
" KeyMap Setting in plugin/settings/keymap.vim
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
