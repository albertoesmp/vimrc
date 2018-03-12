" CONFIG

set mouse=v " Allow mouse use in GUI terminals
syntax on " Enable syntax highlighting
set autoindent " Autoindent on new line
set number " Show line number
set hlsearch " Highlight search occurrences/matches
set cursorline " Underline actual line
set wildmenu " Allow autocomplete when available
set showmatch " Highlight brackets when cursor is on one of the couple


" Tabulacion
set tabstop=4
set shiftwidth=4


" BINDS

" Use space bar to toggle off search occurrences highlighting
nnoremap <space> :nohlsearch<CR>
