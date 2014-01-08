call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
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
"

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
let g:neocomplcache_enable_at_startup = 1
