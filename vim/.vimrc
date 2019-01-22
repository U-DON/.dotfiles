if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
call plug#end()

" Shorten time to enter escape sequence.
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=500
    au InsertLeave * set timeoutlen=500
  augroup END
endif

colorscheme delek
filetype plugin indent on

inoremap jk <Esc>

let g:netrw_liststyle=3

set autoindent
set backupcopy=yes
set expandtab
set hlsearch
set laststatus=2
set mouse=a
set noshowmode
set shiftwidth=2
set smarttab
set splitbelow
set splitright
set tabstop=2
set t_Co=256

syntax on

" lightline

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode' ], [ 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
