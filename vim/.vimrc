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

" Quick escape.
inoremap jk <Esc>

colorscheme delek
filetype plugin indent on
syntax on

" No background on vertical split bars; thinner splits.
hi VertSplit NONE

hi Search ctermfg=Black

" Default background for wildmenu.
hi StatusLine ctermbg=NONE guibg=NONE

hi Visual term=NONE cterm=NONE ctermbg=DarkGrey gui=NONE guifg=NONE guibg=DarkGrey

let g:netrw_liststyle=3

set autoindent
set backspace=indent,eol,start " Sensible backspace.
set backupcopy=yes
set clipboard=unnamed " Sync register with clipboard.
set expandtab
set fillchars=vert:\│ " Connected vertical split characters.
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noshowmode
set shiftwidth=2
set smartcase
set smarttab
set splitbelow
set splitright
set tabstop=2
set t_Co=256
set wildmenu

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
