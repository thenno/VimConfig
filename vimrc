set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plagins
Plugin 'git@github.com:python-mode/python-mode.git'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Search Settings
set incsearch
set ignorecase smartcase
set hlsearch
nmap <C-h> :nohl<CR>


" Undo Settings
set undofile
set undodir=~/.vim/undo/

set nu
set nowrap

set backupcopy=yes
set backupdir=~/.vim/backup

set termencoding=utf-8
set novisualbell
set t_vb=
set encoding=utf-8
set fileencodings=utf8

set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent
set smartindent

set list listchars=tab:→\ ,trail:· "

" python-mode options
let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 0

" Locale settings
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif
