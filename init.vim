call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'tpope/vim-rails'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-endwise'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-pug'
Plug 'scrooloose/nerdtree'
Plug 'Chiel92/vim-autoformat'
Plug 'https://github.com/kien/ctrlp.vim'
call plug#end()

" Para usar las opciones de vim en lugar de las de vi
" Esto tiene que ir al principio del fichero
set nocompatible

" Para deshabilitar el estilo del cursor
set guicursor=

" Cambia la tecla <Leader> de '\' a ','
let mapleader=","

" Muestra el número de línea
set number
" Para activar la auto-indentación
set autoindent
" Espacios en lugar de tabulaciones (dos espacios para indentar)
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround

" Resalta los resultados de una búsqueda
set hlsearch
set incsearch

" Pulsa una tecla para entrar en el paste mode.
" Esto hace que podamos copiar muchas líneas sin tener
" en cuenta el auto-indentado
set pastetoggle=<F5>

" Activa el ratón
set mouse=a

" Mostrar línea a los 100 caracteres
set colorcolumn=100

" Autoformat
map <F6> :Autoformat<CR>

" Usa el clipboard del sistema (permite pegar con Ctrl+v lo copiado desde el vim)
set clipboard=unnamedplus

" Corrige el error que hace que no funcione la tecla de borrado
set backspace=indent,eol,start

" Evita que se creen los archivos .swp
set noswapfile

" Configura NERDCommenter para añadir un espacio después del comentario
let NERDSpaceDelims=1
let g:NERDDefaultAlign = 'left'

" Activamos el marcado de la línea actual
set cursorline

" Corrige error de pegar con el terminal xfce
" set t_BE=

" configurar el esquema de color
syntax on
set t_Co=256
color tokyo_metro

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

let g:airline#extensions#ale#enabled = 1 " si tenemos el plugin airline.

let g:indentLine_enabled = 1
let g:indentLine_color_term = 246
autocmd vimenter * NERDTree
map <leader>n :NERDTreeToggle<CR>
