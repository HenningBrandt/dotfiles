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
imap <C-x> <Esc>:wq<CR>|          " Quickly save and exit
nmap <C-x> :wq<CR>
" TODO: Nop Arrow Keys in insert mode
" TODO: Make Split resizing easier
" TODO: Change mappings to strict
" TODO: Add mappings for junit tests


" Leader commands
" ===============

nmap <Leader>pp :%!python -m json.tool<CR>
nmap <Leader>i mmgg=G'm
nmap <Leader>so :source $MYVIMRC<CR>
map <Leader>p :set paste<CR>"*]p:set nopaste<CR>
nmap <Leader>th :set list!<CR>
nmap <Leader>cs :nohlsearch<CR>
nnoremap <Leader>em :sp ~/dotfiles/vim/mapping.vim<CR>
