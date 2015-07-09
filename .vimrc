set t_Co=256
syntax on
set background=dark
colorscheme distinguished

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" javascript plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

" React syntax highlighting
Plugin 'mxw/vim-jsx'

" Auto insert closing }])
Plugin 'Raimondi/delimitMate'

" Linting integration
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Wakatime plugin
Bundle 'wakatime/vim-wakatime'

filetype plugin indent on    " required

" show line numbers
set number

" replacing tabs by 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" setting up delimitMate to respond to Ctrl+c
imap <C-c> <CR><Esc>O

" configuring Syntastic to use ESLint
let g:syntastic_javascript_checkers = ['eslint']

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 
