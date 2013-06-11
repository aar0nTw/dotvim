if executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column'
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
