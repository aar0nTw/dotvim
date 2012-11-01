set showtabline=2
set nobomb
set title
set nobackup        " no backup file
set noswapfile      " no swap file
set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set ignorecase 
set ruler
set cursorline


map <Leader><Leader> <Leader>c<space>

nmap <leader>v :tabe $MYVIMRC<CR>


" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

