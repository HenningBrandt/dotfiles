" always display status line
set laststatus=2
" hide duplicated mode information
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \    'left': [['mode', 'paste'], ['git', 'filename']]
      \ },
      \ 'component_function': {
      \    'readonly': 'LightlineReadonly',
      \    'git': 'LightlineGitBranch',
      \    'modified': 'LightlineModified',
      \    'filename': 'LightlineFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
\ }

function! LightlineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return "x"
    else
        return ""
    endif
endfunction

function! LightlineGitBranch()
    return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightlineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    end
endfunction

function! LightlineFilename()
    return (LightlineReadonly() != '' ? LightlineReadonly() . ' ' : '') .
        \ (expand('%:t') != '' ? expand('%:t') : '[No Name]') .
        \ (LightlineModified() != '' ? ' ' . LightlineModified() : '')
endfunction
