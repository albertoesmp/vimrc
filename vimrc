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
hi CursorLine term=bold cterm=bold ctermbg=0
set wildmenu " Autocomplete commands
set showmatch " Color brackets pairs
set encoding=utf-8 " UTF-8 encoding
set expandtab " Use spaces when tab

" Indentation configuration
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Always show status line
set laststatus=2

" Recognize .tex files
let g:tex_flavor="latex"

" Set mapleader to comma (,)
let mapleader = ","


" Set alt mapping
execute "set <M-1>=\e1"



" ---  B I N D S  --- "
" - - - - - - - - - - "
" Space-bar for toggle of search highlighting
nnoremap <space> :nohlsearch<CR>
" Toggle NERDTree with Alt+1
nmap <M-1> :NERDTreeToggle<CR>
" Compile latex file with F8
autocmd FileType tex nmap <buffer> <F8> :!latexmk -pdf %<CR>


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

" IndentLine
Bundle 'Yggdroot/indentLine'
set list lcs=tab:__
let g:indentLine_color_term = 136
let g:indentLine_color_gui = '#E6E693'
let g:indentLine_char = '┊'

" ZoomWin
Plugin 'ZoomWin'

" Python
Bundle 'klen/python-mode'
Bundle 'python.vim'
Bundle 'python_match.vim'
" Bundle 'pythoncomplete'
Bundle 'jmcantrell/vim-virtualenv'

" Git
Plugin 'airblade/vim-gitgutter'

" GLSL highlighting
Plugin 'tikhomirov/vim-glsl'

" Tag List (code scheme view)
Plugin 'universal-ctags/ctags'
Plugin 'chudyu/vim-taglist'
Plugin 'majutsushi/tagbar'
" Automatically update the tags with gutten tag! Wunderbar!
Plugin 'ludovicchabant/vim-gutentags'

" let Tlist_WinWidth = 30
let Tlist_Use_Right_Window = 1
" let Tlist_Auto_Open = 1
" let Tlist_Auto_Update = 0
" let Tlist_Close_On_Select = 1
let Tlist_Display_Prototype = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
" process at background:
" let Tlist_Process_File_Always = 1
let Tlist_Enable_Fold_Column = 0
" Keymap: <F8>
noremap <F8> :TlistToggle<CR>
"  }}}

" FZF (Fuzzy finder for file finding and commands)
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

" Autoimport
Plugin 'rustushki/JavaImp.vim'
let g:JavaImpPathSep = ':'
let g:JavaImpPaths = "."
let g:JavaImpDataDir = $HOME . "/vim/JavaImp"
Plugin 'mgedmin/python-imports.vim'
Plugin 'galooshi/vim-import-js'

" Comments
Plugin 'scrooloose/nerdcommenter'

" Refactor
Plugin 'apalmer1377/factorus'

" Flutter
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'

" Close VUNDLE
call vundle#end()
filetype plugin indent on



"
"   / \		WARNING!
"  / | \	Dont forget tu call command: ':PluginInstall' when inside vim
" /  .  \	at least once to ensure plugins installation
" -------




