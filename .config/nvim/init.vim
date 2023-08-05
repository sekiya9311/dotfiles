set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=0
set cindent
syntax enable
set backspace=indent,eol,start
set wildmenu
set expandtab
set softtabstop=2
set vb t_vb=
set clipboard+=unnamed
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

lua require('plugins')
lua require('my_lualine')
