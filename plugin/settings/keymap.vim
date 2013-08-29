map <Leader><Leader> <Leader>c<space>
nmap <leader>v :tabe $MYVIMRC<CR>
"Tabe open
noremap TT :tabe<Space>
"NERDTree
map <C-o> :NERDTreeToggle<CR>

map <F4> :Thumbnail<CR>

"TagBar
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

imap jj <ESC>
imap kk <ESC>

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <F2> :CoffeeLint\|cwindow<CR>

" select ALL
"map <C-A> ggVG

" Switch Highlight
noremap <Leader>c :set cursorline! cursorcolumn!<CR>

"SwitchTab
nnoremap <S-h> gT
nnoremap <S-l> gt

let g:turbux_command_rspec = 'zeus rspec'
" turbux
map <leader>r <Plug>SendFocusedTestToTmux

