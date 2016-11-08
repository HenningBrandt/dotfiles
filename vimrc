" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'

call vundle#end()

" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:       Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:           2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden


" ==================================================================
"
" Personal configuration of the minimal vimrc above
"
" Author:	Henning Brandt

" Centralize Swapfiles
set directory^=$HOME/.vim/tmp//

" Use space as the leader
let mapleader="\<space>"

" Insert newline
nmap <S-Enter> o<Esc>
" Toogle hidden chars
nmap <Leader>h :set list!<CR>
" Move line down
nmap - ddp
" Quick exit insert mode
imap jj <Esc>
" Use tab for completion
imap <Tab> <C-n>
" Pretty print json
" https://pascalprecht.github.io/2014/07/10/pretty-print-json-in-vim/
" TODO: Need to find out how to bind this only if python is intalled
nmap <Leader>pp :%!python -m json.tool<enter>
" disable arrow keys
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>
" Make switching splits easier
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap <C-j> <C-W>j
nmap <C-h> <C-W>h

imap <C-Tab> <Tab>

" Textmate symbols for hidden chars
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show column width limit
set colorcolumn=80

" Set color scheme
set background=dark
colorscheme solarized

" Editor font
set guifont=SFMono-Regular:h11

" Enable relative line numbering
set relativenumber

" Set indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Show statusbar
set laststatus=2
let g:airline_theme='solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set t_Co=256 "enable statusbar colors in terminal
