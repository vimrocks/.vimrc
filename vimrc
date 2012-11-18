set encoding=utf-8

" szerokosc tab
set tabstop=4
" zamiana tab na spacje
set expandtab
" szerokosc wciec
set shiftwidth=4
" ile spacji jest kasowanych przez <backspace>
set softtabstop=4

set smartindent
set autoindent

filetype plugin indent on

set showcmd
set number

if !has("gui_running")
    inoremap <C-@> <C-x><C-o>
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete
set completeopt=preview,longest,menu
set completefunc=pythoncomplete#Complete
set completefunc=rubycomplete#Complete

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <left> <nop>
imap <right> <nop>
map <right> <nop>

inoremap <C-space> <C-x> <C-o>

let mapleader = "-"

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

nnoremap <leader>e :vsplit $MYVIMRC<cr>G


nnoremap , :w<cr>q:k

iabbrev cpp@@ #include <iostream><cr><cr>using namespace std;<cr><cr>int main()<cr>{<cr>return 0;<cr>}<esc>%o

iabbrev ce@ cout << "" << endl;<esc>2F"i



nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

autocmd FileType cpp    nnoremap <leader>c I//<esc>
autocmd FileType python nnoremap <leader>c I#<esc>
autocmd FileType python nnoremap <leader>u ^x<esc>

vnoremap < <gv
vnoremap > >gv

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap ; :

nnoremap <F5> <esc>:w<cr><esc>:r! python % <cr>
nnoremap <F6> <esc>:w<cr><esc>:r! python3 % <cr>

nnoremap <leader><cr> 0yWo<esc>p0<C-a>A
nnoremap <F2> :GundoToggle<CR>

noremap <C-j> :m+<CR>
noremap <C-k> :m-2<CR>
inoremap <C-j> <Esc>:m+<CR>
inoremap <C-k> <Esc>:m-2<CR>
vnoremap <C-j> :m'>+<CR>gv
vnoremap <C-k> :m-2<CR>gv

set colorcolumn=80

set scrolloff=8         " Number of lines from vertical edge to start scrolling
set sidescrolloff=15 " Number of cols from horizontal edge to start scrolling
set sidescroll=1       " Number of cols to scroll at a time

runtime ftplugin/man.vim

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

se so=999

nnoremap <leader><space> :noh<cr>


for key in [ ".", ":", "<bar>", "/", "<bslash>", "*" ]
    exe "nnoremap ci".key." T".key."ct".key
    exe "nnoremap ca".key." F".key."cf".key
    exe "nnoremap di".key." T".key."dt".key
    exe "nnoremap da".key." F".key."df".key
    exe "nnoremap vi".key." T".key."vt".key
    exe "nnoremap va".key." F".key."vf".key
    exe "nnoremap yi".key." T".key."yt".key
    exe "nnoremap ya".key." F".key."yf".key
endfor

" patoghen
call pathogen#infect()

