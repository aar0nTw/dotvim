call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
set ff=unix
set synmaxcol=256
syntax on
filetype on
filetype plugin indent on
set t_Co=256
set backspace=2
set wildmenu
colors hemisu

"colors solarized
"colors smyck
"colors wombat256
"colors seoul256
"colors railscasts
"colors murphy

" Leader Key
let mapleader = ","

let g:solarized_termcolors=256
let g:solarized_termtrans=1

let g:Powerline_symbols = 'fancy'
"let g:SuperTabDefaultCompletionType="context"

set background=dark
set autoread

" Other Setting in plugin/settings/setting.vim
" KeyMap Setting in plugin/settings/keymap.vim
"autocmd FileType ruby let g:rubycomplete_buffer_loading = 1

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

let g:startify_custom_header = [
      \ '                                 ________  __ __        ',
      \ '            __                  /\_____  \/\ \\ \       ',
      \ '    __  __ /\_\    ___ ___      \/___//''/''\ \ \\ \    ',
      \ '   /\ \/\ \\/\ \ /'' __` __`\        /'' /''  \ \ \\ \_ ',
      \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \      /'' /''__  \ \__ ,__\',
      \ '    \ \___/  \ \_\ \_\ \_\ \_\    /\_/ /\_\  \/_/\_\_/  ',
      \ '     \/__/    \/_/\/_/\/_/\/_/    \//  \/_/     \/_/    ',
      \ '',
      \ '                            ,                           ',
      \ '     ,-.       _,---._ __  / \                          ',
      \ '    /  )    .-''       `./ /   \                         ',
      \ '   (  (   ,''            `/    /|                        ',
      \ '    \  `-''             \''\   / |                        ',
      \ '     `.              ,  \ \ /  |                        ',
      \ '      /`.          ,''-`----Y   |                        ',
      \ '     (            ;        |   ''                        ',
      \ '     |  ,-.    ,-''         |  /                         ',
      \ '     |  | (   |        hjw | /                          ',
      \ '     )  |  \  `.___________|/                           ',
      \ '     `--''   `--''                                        ' ]

