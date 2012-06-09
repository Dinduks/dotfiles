call pathogen#infect()

set number
set cursorline
set t_Co=256
set background=dark
set mouse=a
colorscheme solarized
let g:solarized_termcolors=256

syntax enable
filetype plugin indent on
au BufNewFile,BufRead *.html.twig set filetype=htmldjango

set ff=unix
set encoding=utf-8
set fileencoding=utf-8
set listchars=trail:◃,nbsp:•
set list

set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Keybindings
map <F3> :!clear && ruby %<CR> " execute the current ruby file
map <F4> :call FutureShock()<CR>
map <F5> :tabnew<CR>
map <F6> :tabclose<CR>
map <F7> gT
map <F8> gt
map <F9> :NERDTreeToggle<CR>
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc

" Remove trailing whitespaces, replace tabs and non-breaking spaces with spaces
" TODO: Replace a single tab with a number of spaces equal to the current tabstop value
function! FutureShock()
  silent! %s/\t/  /g
  silent! %s/\%u00a0/ /g
  silent! %s/\s\+$//g
endfunction
