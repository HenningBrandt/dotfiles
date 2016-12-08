" Vim configuration file
"
" author: Henning Brandt


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off


" Plugin configuration
" ====================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

function! s:SourceConfigFilesIn(directory)
    let directory_splat = '~/.vim/' . a:directory . '/*.vim'
    for config_file in split(glob(directory_splat), '\n')
        if filereadable(config_file)
            execute 'source' config_file
        endif
    endfor
endfunction

syntax on
filetype plugin indent on

" <Leader> must be set before any mapping is defined
let mapleader="\<space>"

call s:SourceConfigFilesIn('rcplugins')
call s:SourceConfigFilesIn('functions')
call s:SourceConfigFilesIn('')
