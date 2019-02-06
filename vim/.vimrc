if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

let g:airline_section_c='%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_theme='simple'
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
set statusline+='%F' " Show full file path.
set tabstop=2
set t_Co=256
set wildmenu
