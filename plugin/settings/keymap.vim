map <Leader><Leader> <Leader>c<space>
nmap <Leader>v :tabe $MYVIMRC<CR>
map <Leader>s :w<CR>

"Tabe open
noremap TT :tabe<Space>
"NERDTree
map <C-o> :NERDTreeToggle<CR>

map <F4> :Thumbnail<CR>

"TagBar
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

imap jj <ESC>
"imap kk <ESC>

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

" Convention: Set turbux command in every project's localvimrc
" Use example: let g:turbux_command_rspec = 'zeus rspec'
" turbux
map <leader>r <Plug>SendFocusedTestToTmux

"Copy / Paste in Mac OSX keyboard

map  <F7> :r !pbpaste<CR>
nmap <F8> :.w !pbcopy<CR><CR>
vmap <C-l> :w !pbcopy<CR><CR>

" Runner
autocmd FileType ruby nmap <F5> :rubyf ./%<CR>
autocmd FileType coffee nmap <F5> :silent !coffee %<CR>
nmap <F3> :NeoCompleteTagMakeCache<CR>
