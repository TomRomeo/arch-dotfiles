set relativenumber
set number

"enabling syntax
"syntax on


" set the tab width to 4 characters
" set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Allows backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on.
set autoindent


" Enable highlighting when using the search mode
set hlsearch

" dein.vim (plugin manager) specific stuff
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  " installing nerdtree
  call dein#add('preservim/nerdtree')
  " installing the gruvbox theme
  call dein#add('morhetz/gruvbox')
  " installing the emmet plugin
  call dein#add('mattn/emmet-vim')
  " installing the ale plugin
  call dein#add('w0rp/ale')
  " installing the gitgutter plugin
  call dein#add('airblade/vim-gitgutter')
  " installing the auto pars plugin
  call dein#add('jiangmiao/auto-pairs')
  " installing the vim-multiple-cursors plugin
  call dein#add('terryma/vim-multiple-cursors')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" enable NERDTree on startup
" autocmd vimenter * NERDTree

" enabling the gruvbox theme
autocmd vimenter * colorscheme gruvbox

" setting the updatetime of vim
set updatetime=100
