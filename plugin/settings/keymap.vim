map <Leader><Leader> gc<space>
nmap <Leader>v :tabe $MYVIMRC<CR>
map <Leader>s :w<CR>

"Tabe open
noremap TT :tabe<Space>
"NERDTree
"map <C-o> :NERDTreeToggle<CR>
"map <Leader><Leader>r :NERDTreeFind<CR>

"TagBar
nnoremap <C-l>  :Vista!!<CR>
let g:tagbar_autofocus = 1

"Dash dash.vim
"nmap <silent> <leader>d <Plug>DashSearch

imap jj <ESC>
"imap kk <ESC>

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
"map <C-A> ggVG

" Switch Highlight
noremap <Leader>c :set cursorline! <CR>

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

map $ g_

nmap <Leader>af :ALEFix<CR>
nmap <Leader>ad :ALEDisableBuffer<CR>
nmap <Leader>ae :ALEEnableBuffer<CR>

