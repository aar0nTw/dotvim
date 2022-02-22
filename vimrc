call pathogen#infect()
call pathogen#helptags()

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

let g:solarized_termcolors=256
set background=dark

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

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }

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
