set encoding=utf-8

set t_Co=256
set termguicolors

set ff=unix
set synmaxcol=256
set backspace=2
set wildmenu
set pumheight=12

let mapleader = ","

"pathogen --------------------------------
call pathogen#infect()
call pathogen#helptags()
"End pathogen ----------------------------

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Set: runtime path
set rtp+=/Users/aaron/.config/nvim/lua
set rtp+=/opt/homebrew/opt/fzf
" Required: for dein.vim plugin management
set rtp+=~/.config/nvim/./dein/repos/github.com/Shougo/dein.vim

" Required:
let s:toml = '~/.config/nvim/./dein/config/plugins.toml'
let s:lazy_toml = '~/.config/nvim/./dein/config/plugins.lazy.toml'
if dein#load_state('~/.config/nvim/./dein')
  call dein#begin('~/.config/nvim/./dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/./dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Add or remove your plugins here like this:
  call dein#add('rcarriga/nvim-notify')
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('mhinz/vim-startify')
  call dein#add('tyrannicaltoucan/vim-quantum')
  call dein#add('vim-scripts/L9')
  call dein#add('lifepillar/vim-solarized8')
  call dein#add('liuchengxu/vista.vim')
  call dein#add('liuchengxu/vim-clap')
  call dein#add('junegunn/fzf.vim')
  call dein#add('kyazdani42/nvim-web-devicons')
  call dein#add('kyazdani42/nvim-tree.lua')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('dense-analysis/ale')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('terrortylor/nvim-comment')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-surround')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('kassio/neoterm')
  call dein#add('andymass/vim-matchup')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-endwise')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Load: lua settings
lua require'settings';

" Set: colorscheme
colors solarized8

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

set clipboard+=unnamed

let g:go_fmt_command = "goimports"

set autoread
