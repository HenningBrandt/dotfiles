" Custom key bindings
" ===================

nnoremap - ddp|                       " Move line down
inoremap jj <Esc>|                    " Quick exit insert mode
nnoremap <Up> <Nop>|                  " Disable arrow keys
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <C-k> <C-W>k|                " Make switching splits esier
nnoremap <C-l> <C-W>l
nnoremap <C-j> <C-W>j
nnoremap <C-h> <C-W>h
inoremap <Tab> <C-n>
inoremap <C-x> <Esc>:wq<CR>|          " Quickly save and exit
nnoremap <C-x> :wq<CR>
" TODO: Nop Arrow Keys in insert mode
" TODO: Make Split resizing easier
" TODO: Change mappings to strict
" TODO: Add mappings for junit tests


" Leader commands
" ===============

nnoremap <Leader>pp :%!python -m json.tool<CR>
nnoremap <Leader>i mmgg=G'm
nnoremap <Leader>so :source $MYVIMRC<CR>
noremap <Leader>p :set paste<CR>"*]p:set nopaste<CR>
nnoremap <Leader>th :set list!<CR>
nnoremap <Leader>cs :nohlsearch<CR>
nnoremap <Leader>em :sp ~/dotfiles/vim/mapping.vim<CR>
