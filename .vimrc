call pathogen#infect()

set number
set autoindent
filetype plugin indent on
set t_Co=256
syntax enable
colorscheme Monokai

set encoding=utf-8
set fileencoding=utf-8

" Keybindings
map <F7> gT
map <F8> gt

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp
