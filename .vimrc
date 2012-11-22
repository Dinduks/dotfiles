call pathogen#infect()

let mapleader=","

" Mainly visual stuff
set number
set relativenumber
set cursorline
set colorcolumn=85
set mouse=a
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2
set list
set listchars=trail:◃,nbsp:•
set t_Co=256
set background=dark
silent! set transparency=5 " Shut the full cup
colorscheme solarized
let g:solarized_termcolors=256
syntax enable

" Files related stuff
set ff=unix
set encoding=utf-8
set fileencoding=utf-8
set undofile

" Tabs & co
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Events
au BufNewFile,BufRead *.html.twig set  filetype=htmldjango
au BufNewFile,BufRead *.rst.inc   set  filetype=rst
au BufNewFile,BufRead *.ru        set  filetype=ruby
au BufNewFile,BufRead Gemfile     set  filetype=ruby
au BufNewFile,BufRead *.js        setl shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.html      setl shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.java      setl shiftwidth=4 tabstop=4

" Search stuff
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <LEADER><SPACE> :noh<CR>
let g:ctrlp_custom_ignore = { 'dir': '\v[\/](\.git|target)$' }

" Keybindings
map <LEADER>f :call FutureShock()<CR>
map <F5> :tabnew<CR>
map <F6> :tabclose<CR>
map <F7> gT
map <F8> gt
map <LEADER>n :NERDTreeToggle<CR>
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e
inoremap jj <ESC>

" Forget about the arrow keys!
nnoremap <UP>    <NOP>
nnoremap <DOWN>  <NOP>
nnoremap <LEFT>  <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP>    <NOP>
inoremap <DOWN>  <NOP>
inoremap <LEFT>  <NOP>
inoremap <RIGHT> <NOP>

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp
set undodir=~/.tmp,/var/tmp,/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc

" Remove trailing whitespaces, replace tabs and non-breaking spaces with spaces
function! FutureShock()
  silent! %retab
  silent! %s/\%u00a0/ /
  silent! %s/\s\+$//
endfunction

