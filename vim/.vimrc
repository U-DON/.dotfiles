if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/colorsupport.vim'
call plug#end()

let g:material_theme_style = 'dark'
colorscheme material

let g:netrw_liststyle=3

inoremap jk <Esc>

set backupcopy=yes
set expandtab
set laststatus=2
set noshowmode
set shiftwidth=4
set tabstop=4

filetype plugin indent on
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
