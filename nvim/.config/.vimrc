" SET COMPATIBILITY TO VIM ONLY
set nocompatible
set nolist
set rnu

" FORCE PLUGINS TO LOAD CORRECTLY
filetype off
filetype plugin indent on

" TURN ON SYNTAX HIGHLIGHTING
syntax on

" TURN OFF MODELINES
set modelines=0

" SHOW LINE NUMBERS
set number

" SHOW FILE STATS
set ruler

" ENCODING
set encoding=utf-8

" WHITESPACE
set nowrap
set textwidth=150
set colorcolumn=150
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set autoindent
set smartindent

" SPEED UP SCROLLING IN VIM
set ttyfast

" DISPLAY OPTIONS
set showcmd
set laststatus=2
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set cursorline

" IMPORTS
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim

" COLOR SCHEME
colorscheme dracula
highlight Normal ctermbg=NONE

" SEARCHING
set hlsearch	" highlight matches
set incsearch	" incremental searching
set ignorecase	" searches are case insensitive
set smartcase	" ... unless they contain at least one capital letter
set showmatch
