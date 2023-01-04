set encoding=utf-8
set t_Co=256
set termguicolors
set ff=unix
set synmaxcol=256
set backspace=2
set wildmenu
set pumheight=12
set autoread
set clipboard+=unnamed

let mapleader = ","
let g:python3_host_prog = '/opt/homebrew/bin/python3'
let g:go_fmt_command = "goimports"

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Set: runtime path
set rtp+=/Users/aaron/.config/nvim/lua
set rtp+=/opt/homebrew/opt/fzf
" Required: for dein.vim plugin management
set rtp+=~/.config/nvim/./dein/repos/github.com/Shougo/dein.vim

" Dein.vim Setup Required:
let s:toml = '~/.config/nvim/./dein/config/plugins.toml'
let s:lazy_toml = '~/.config/nvim/./dein/config/plugins.lazy.toml'
let s:theme_toml = '~/.config/nvim/./dein/config/themes.toml'
let g:dein#auto_recache = v:false
if dein#load_state('~/.config/nvim/./dein')
  call dein#begin('~/.config/nvim/./dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/./dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#load_toml(s:theme_toml, {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Load: lua settings
lua require'settings';
lua require'dashboard-config';

" Set: colorscheme
colorscheme nightfly

autocmd VimEnter * call dein#call_hook('post_source')
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction

vmap <silent> <expr> p <sid>Repl()

autocmd CompleteDone * pclose

