if executable("rg")
    let g:ackprg='rg --vimgrep'
    noremap FF :Ack<SPACE>
    noremap FG :AckFile<SPACE>
elseif executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column --ignore-case'
    noremap FF :Ack<SPACE>
    noremap FG :AckFile<SPACE>
else
    if executable("ack")
        noremap FF :Ack<SPACE>
        noremap FG :AckFile<SPACE>
    else
        noremap FF :echo "Sorry, you need to install ack or ag first!"<CR>
        noremap FG :echo "Sorry, you need to install ack or ag first!"<CR>
    endif
endif
