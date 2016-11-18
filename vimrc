" Vim configuration file
"
" author: Henning Brandt


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


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

" <Leader> must be set before any mapping is defined
let mapleader="\<space>"

call s:SourceConfigFilesIn('rcplugins')
call s:SourceConfigFilesIn('')

syntax on
filetype plugin indent on
