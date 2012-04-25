call pathogen#infect()

set number
set autoindent
set cursorline
filetype plugin indent on
let g:solarized_termcolors=256
set t_Co=256
syntax enable
set background=dark
colorscheme solarized
set mouse=a

set ff=unix
set encoding=utf-8
set fileencoding=utf-8

set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Keybindings
map <F7> gT
map <F8> gt
map <F9> :NERDTreeToggle<CR>
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc
