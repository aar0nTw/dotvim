if executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column'
    noremap FF :Ack<SPACE>
else
    if executable("ack")
        noremap FF :Ack<SPACE>
    else
        noremap FF :echo "Sorry, you need to install ack or ag first!"<CR>
    endif
endif
