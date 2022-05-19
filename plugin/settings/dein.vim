let g:dein#auto_recache = v:true
" Enable dein notification, use `nvim-notify`.
let g:dein#enable_notification = v:true
" Strict check update every weeks.
let g:dein#install_check_remote_threshold = 24 * 60 * 60
" For update
let g:dein#install_github_api_token = $DEIN_GITHUB_TOKEN

function! Dein_clean_and_recache()
  call map(dein#check_clean(), { _, val -> delete(val, 'rf') })
  call dein#recache_runtimepath()
endfunction

" Shorthand for dein
command! DeinInstall call dein#install()
command! DeinCheckUpdate call dein#check_update()
command! DeinClean call Dein_clean_and_recache()

