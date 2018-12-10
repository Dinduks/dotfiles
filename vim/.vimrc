call pathogen#infect()

let mapleader=","

" Mainly visual stuff
set splitbelow
set splitright
set number
set cursorline
silent! set colorcolumn=80
set mouse=a
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2
set list
set listchars=trail:◃,nbsp:•
set t_Co=256
set background=dark
set ruler
silent! set transparency=1 " Shut the full cup
colorscheme solarized
"let g:solarized_termcolors=256
syntax enable
hi Normal ctermbg=None

" Files related stuff
set ff=unix
set encoding=utf-8
set fileencoding=utf-8
silent! set undofile

" Tabulations & co
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Events
au BufNewFile,BufRead *.html.twig set  filetype=htmldjango
au BufNewFile,BufRead *.md        setl filetype=markdown
au BufNewFile,BufRead *.rst.inc   set  filetype=rst
au BufNewFile,BufRead *.ru        set  filetype=ruby
au BufNewFile,BufRead Gemfile     set  filetype=ruby
au BufNewFile,BufRead *.java      setl shiftwidth=4 tabstop=4
au BufNewFile,BufRead *.go        set  noexpandtab shiftwidth=4 softtabstop=4 tabstop=4

" Search stuff
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <LEADER><SPACE> :noh<CR>
vnoremap // y/<C-R>"<CR>
let g:ctrlp_custom_ignore = { 'dir': '\v[\/](\.git|target)$' }

" Keybindings
map <LEADER>f :call FutureShock()<CR>
map <F5> :tabnew<CR>
map <F6> :tabclose<CR>
map <F7> gT
map <F8> gt
map <F9> :w !xclip -selection clipboard<CR><CR>
map <LEADER>n :NERDTreeToggle<CR>
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e
inoremap jj <ESC>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
set backupdir=~/.tmp,/tmp,/var/tmp
set directory=~/.tmp,/tmp,/var/tmp
silent! set undodir=~/.tmp,/tmp,/var/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc

"let g:syntastic_mode_map = { 'mode': 'active',
      "\ 'active_filetypes': ['python', 'javascript'],
      "\ 'passive_filetypes': [] }
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_java_javac_executable = "" " Disable Syntastic for Java files
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='/usr/bin/eslint'
let g:syntastic_ruby_checkers=['mri']

" Remove trailing whitespaces, replace tabs and non-breaking spaces with spaces
function! FutureShock()
  silent! %retab
  silent! %s/\%u00a0/ /
  silent! %s/\s\+$//
endfunction
