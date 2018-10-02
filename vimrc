" CONFIG

set mouse=v " Admitir ratón en modo gráfico
syntax on " Colorear de acuerdo a la sintaxis
set autoindent " Autoindent al cambiar de línea
set number " Mostrar número de línea
set hlsearch " Resaltar busquedas encontradas
set cursorline " Subrayar la linea actual
set wildmenu " Autocompletar comandos
set showmatch " Colorear parentesis correspondiente cuando el cursor esta sobre su pareja


" Tabulacion
set tabstop=4
set shiftwidth=4

" Habilitar consulta de man pages desde vim (:Man funcion)
runtime ftplugin/man.vim

" BINDS

" Al pulsar espacio desactivar resaltado de busqueda
nnoremap <space> :nohlsearch<CR>

