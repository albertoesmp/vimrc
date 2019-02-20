" ------------------------------- "
" ---  ALBERTO ESMORIS VIMRC  --- "
" ------------------------------- "

"
" NOTICE this vimrc requires Vundle to be installed
" and accesible in order to work properly
"

" ---  B A S E  --- "
" - - - - - - - - - "
set mouse=v " Allow mouse on GUI mode
syntax on " Syntax highlighting
set autoindent " Autoindent when changing line
set number " Show line number
set hlsearch " Highlight search results
set cursorline " Underline current line
set wildmenu " Autocomplete commands
set showmatch " Color brackets pairs
set encoding=utf-8 " UTF-8 encoding
set expandtab " Use spaces when tab

" Indentation configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4



" ---  B I N D S  --- "
" - - - - - - - - - - "
" Space-bar for toggle of search highlighting
nnoremap <space> :nohlsearch<CR>


" ---  V U N D L E  --- "
" - - - - - - - - - - - "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


" ---  P L U G I N S  --- "
" - - - - - - - - - - - - "
" Enable man pages from vim (:Man <name>)
runtime ftplugin/man.vim

" Autocomplete plugin: YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

" Syntax checking : Syntastic
Plugin 'vim-syntastic/syntastic'

" File tree: NERDTree
Plugin 'scrooloose/nerdtree'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" Close VUNDLE
call vundle#end()
filetype plugin indent on



"
"   / \		WARNING!
"  / | \	Dont forget tu call command: ':PluginInstall' when inside vim
" /  .  \	at least once to ensure plugins installation
" -------




