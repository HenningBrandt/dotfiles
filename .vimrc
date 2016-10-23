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


" Personal configuration to the minimal vimrc above
"
" Author:	Henning Brandt

" Use space as the leader
let mapleader="\<space>"

" Keymaps
imap jj <Esc>
nmap <S-Enter> o<Esc>
nmap <leader>l :set list!<CR>

" Textmate symbols for hidden chars
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Show column width limit
set colorcolumn=80

" Set color scheme
set background=dark
colorscheme solarized

" Enable relative line numbering
set relativenumber

" Set indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Enable pathogen plugin
execute pathogen#infect()
