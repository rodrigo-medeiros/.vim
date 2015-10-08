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

filetype plugin on           " required by nerdcommeter
filetype plugin indent on    " required

" show line numbers
set number

" default indentation: 2 spaces
set ts=2 sts=2 sw=2 expandtab

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" setting up delimitMate to respond to Ctrl+c
imap <C-c> <CR><Esc>O

" configuring Syntastic to use ESLint
let g:syntastic_javascript_checkers = ['eslint']

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
