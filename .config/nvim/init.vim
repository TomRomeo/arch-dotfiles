set relativenumber
set number

    " configuration for Airline status bar to work correctly

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.maxlinenr = '㏑'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = 'Ξ'

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = '☰'
    let g:airline_symbols.maxlinenr = ''



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


    " installing fugitive ( a very powerful git integration )
    call dein#add('tpope/vim-fugitive')


    " installing surround ( a very neat plugin to surround words with stuff )
    call dein#add('tpope/vim-surround')


    " installing the auto pars plugin
    call dein#add('jiangmiao/auto-pairs')


    " installing the vim-multiple-cursors plugin ( disabled because I can just
    " call dein#add('terryma/vim-multiple-cursors')
 

    " installing the css-color plugin to show hex colors in their color
    call dein#add('ap/vim-css-color')


    " installing fzf for vim
    call dein#add('junegunn/fzf')
    " call dein#add('junegunn/fzf.vim') ( unneccessary  )
    
    " installing coc ( autocomplete )
    call dein#add('neoclide/coc.nvim', {'rev': 'release'})


    call dein#add('ycm-core/YouCompleteMe')

    " installing vim-airline ( status bar )

    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    let g:airline_powerline_fonts = 1
    let g:airline_solarized_bg='dark'
    " air-line
    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif





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
