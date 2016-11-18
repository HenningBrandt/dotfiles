" Vim configuration file
"
" author: Henning Brandt


" Plugin configuration
" ====================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

function! s:SourceConfigFilesIn(directory)
    let directory_splat = '~/.vim/' . a:directory . '/*.vim'
    for config_file in split(glob(directory_splat), '\n')
        if filereadable(config_file)
            execute 'source' config_file
        endif
    endfor
endfunction


" General settings
" ================

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Configure line numbers
set number
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Centralize Swapfiles
set directory^=$HOME/.vim/tmp//

" Set indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Textmate symbols for hidden chars
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show column width limit
set colorcolumn=80

" Autoresize splits
set winwidth=120
set winheight=5
set winminheight=5
set winheight=999

" More natural behaviour for splits
set splitbelow
set splitright

" Make vim look pretty
set background=dark
colorscheme solarized
set guifont=SFMono-Regular:h11


" Language specific settings
" ==========================

augroup myfiletypes
    autocmd!
    autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
    autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
augroup END


" Custom key bindings
" ===================

nmap - ddp|                       " Move line down
imap jj <Esc>|                    " Quick exit insert mode
nmap <Up> <Nop>|                  " Disable arrow keys
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>
nmap <C-k> <C-W>k|                " Make switching splits esier
nmap <C-l> <C-W>l
nmap <C-j> <C-W>j
nmap <C-h> <C-W>h
imap <Tab> <C-n>
" Terminal flow control must be disabled for Ctr-s to work
imap <C-s> <Esc>:w<CR>|           " Escape insert mode and save file
nmap <C-s> <Esc>:w<CR>


" Leader commands
" ===============

let mapleader="\<space>"

nmap <Leader>pp :%!python -m json.tool<enter>
nmap <Leader>i mmgg=G'm
nmap <Leader>so :source $MYVIMRC<CR>
map <Leader>p :set paste<CR>"*]p:set nopaste<CR>
nmap <Leader>h :set list!<CR>


" Plugin Configuration
" ====================

call s:SourceConfigFilesIn('rcplugins')

