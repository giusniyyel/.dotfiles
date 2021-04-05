" PLUGINS
call plug#begin('~/.vim/plugged')

" SYNTAX
Plug 'sheerun/vim-polyglot'

" STATUS BAR
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" THEMES
Plug 'dracula/vim', {'as':'dracula'}

" TREE
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" ICONS
Plug 'ryanoasis/vim-devicons'

" TYPING
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'uiiaoo/java-syntax.vim'

" TMUX
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" AUTOCOMPLETE
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TEST
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'

" GIT INTEGRATION
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

call plug#end()
