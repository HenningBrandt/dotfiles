function! ToggleDarkMode()
    if &background == "dark"
        set background=light
        colorscheme PaperColor
        if $TERM_PROGRAM == "iTerm.app"
            call system("~/dotfiles/iterm/itermcolors ~/dotfiles/iterm/material.itermcolors")
        endif
    else
        set background=dark
        colorscheme solarized
        if $TERM_PROGRAM == "iTerm.app"
            call system("~/dotfiles/iterm/itermcolors ~/dotfiles/iterm/Solarized.itermcolors")
        endif
    endif
endfunction

nnoremap <Leader>td :call ToggleDarkMode()<CR>
