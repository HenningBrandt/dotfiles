" Configure line numbers
set number
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Centralize Swapfiles
set directory^=$HOME/.vim/tmp//

" Make backspace behave normal
set backspace=indent,eol,start

" Set indentation
set tabstop=4
set shiftwidth=4
set expandtab
 
" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Textmate symbols for hidden chars
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show column width limit
set colorcolumn=80

" More natural behaviour for splits
set splitbelow
set splitright

" Make vim look pretty
set background=light
colorscheme PaperColor
set guifont=SFMono-Regular:h11


