call pathogen#infect()
call pathogen#helptags()

let mapleader = ","
set encoding=utf-8
set ff=unix
set synmaxcol=256
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

let g:ycm_semantic_triggers = {
  \ 'coffee': ['.'],
  \ }

let g:ycm_min_num_of_chars_for_completion = 1

let g:ctrlp_reuse_window  = 'startify'

let g:go_fmt_command = "goimports"

set autoread
