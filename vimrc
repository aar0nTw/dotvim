set encoding=utf-8

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
set rtp+=/Users/aaron/.config/nvim/./dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/aaron/.config/nvim/./dein')

" Let dein manage dein
" Required:
call dein#add('/Users/aaron/.config/nvim/./dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('rcarriga/nvim-notify')
call dein#add('wsdjeg/dein-ui.vim')
call dein#add('mhinz/vim-startify')
call dein#add('lifepillar/vim-solarized8')
call dein#add('tyrannicaltoucan/vim-quantum')
call dein#add('vim-scripts/L9')
call dein#add('liuchengxu/vista.vim')
call dein#add('liuchengxu/vim-clap')
call dein#add('junegunn/fzf.vim')
call dein#add('kyazdani42/nvim-web-devicons')
call dein#add('kyazdani42/nvim-tree.lua')
call dein#add('ryanoasis/vim-devicons')
call dein#add('dense-analysis/ale')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('terrortylor/nvim-comment')

" Required:
call dein#end()

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

set termguicolors

let mapleader = ","
set ff=unix
set synmaxcol=256
set t_Co=256
set backspace=2
set wildmenu
set pumheight=12

let g:ale_sign_column_always = 1

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

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'css': ['prettier'],
\}

set autoread
