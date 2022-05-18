"pathogen --------------------------------
call pathogen#infect()
call pathogen#helptags()
"End pathogen ----------------------------

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/aaron/.config/nvim/./dein/repos/github.com/Shougo/dein.vim

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

" Required:
call dein#end()
lua require'nvim-tree'.setup();
colors solarized8

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
set rtp+=/opt/homebrew/opt/fzf

set termguicolors

let mapleader = ","
set encoding=utf-8
set ff=unix
set synmaxcol=256
set t_Co=256
syntax on
filetype on
filetype plugin indent on
set backspace=2
set wildmenu

let g:ale_sign_column_always = 1

" Other Setting in plugin/settings/setting.vim
" KeyMap Setting in plugin/settings/keymap.vim

autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction

function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction

vmap <silent> <expr> p <sid>Repl()

set pumheight=12
autocmd CompleteDone * pclose

set clipboard+=unnamed

function! RestoreRegister()
    let @" = s:restore_reg
    if &clipboard == "unnamed"
        let @* = s:restore_reg
    endif
    return ''
endfunction

function! s:Repl()
    let s:restore_reg = @"
    return "p@=RestoreRegister()\<cr>"
endfunction

let g:ycm_min_num_of_chars_for_completion = 1

let g:ctrlp_reuse_window  = 'startify'

let g:go_fmt_command = "goimports"

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'typescript.tsx': ['prettier'],
\   'css': ['prettier'],
\}

set autoread

autocmd BufWritePost * GitGutter
