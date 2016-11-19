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
imap <C-s> :w<CR>|                " Escape insert mode and save file
nmap <C-s> <Esc>:w<CR>
imap <C-x> <Esc>:wq<CR>|          " Quickly save and exit
nmap <C-x> :wq<CR>


" Leader commands
" ===============

nmap <Leader>pp :%!python -m json.tool<enter>
nmap <Leader>i mmgg=G'm
nmap <Leader>so :source $MYVIMRC<CR>
map <Leader>p :set paste<CR>"*]p:set nopaste<CR>
nmap <Leader>h :set list!<CR>
nmap <Leader>c :nohlsearch<CR>
