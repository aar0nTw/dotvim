let g:clap_layout = { 'width': '50%', 'height': '20%', 'col': '25%', 'row': '40%' }
let g:clap_background_shadow_blend=85
let g:clap_theme='material_design_dark'
let g:clap_open_preview='never'
let g:clap_preview_direction='UD'
let g:clap_popup_border='double'
let g:clap_current_selection_sign = { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_preview_size=2
noremap <C-p> :Clap files<CR>
noremap FF :Clap live_grep<CR>
noremap FC :Clap<CR>
noremap FH :Clap history<CR>
noremap FB :Clap buffers<CR>
