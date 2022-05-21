let g:dashboard_preview_command = 'cat'
let g:dashboard_preview_pipeline = 'lolcat -S 125 -a -d 5 -s 35'
let g:dashboard_preview_file = '~/.config/nvim/neovim.cat'
let g:dashboard_preview_file_height = 14
let g:dashboard_preview_file_width = 70
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
