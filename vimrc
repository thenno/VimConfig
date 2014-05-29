set nocompatible

filetype off


" Bundle Settings
runtime bundle/vim-pathogen/autoload/pathogen.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on


" Plagins
Plugin 'https://github.com/tpope/vim-pathogen.git'
Plugin 'https://github.com/gmarik/Vundle.vim.git'
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/mantiz/vim-plugin-l9.git'
Plugin 'https://github.com/vim-scripts/FuzzyFinder.git'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'SirVer/ultisnips'
Plugin 'https://github.com/vim-perl/vim-perl.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'plasticboy/vim-markdown'


" Colorscheme
set t_Co=256
set background=dark
color xoria256-my


" Search Settings
set incsearch
set ignorecase smartcase
set hlsearch
nmap <C-h> :nohl<CR>


" Undo Settings
set undofile
set undodir=~/.vim/undo/


" Filetypes Settings
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py let &colorcolumn=join(range(80,999),",")


" python-mode
let g:pymode_options = 0
let g:pymode_folding = 0

let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_autoimport_import_after_complete = 1

let g:pymode_doc = 1
autocmd FileType python set completeopt-=preview "remove autocomplite preview

let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pylint', 'pep8']
let g:pymode_lint_ignore = "E272,W0141,W0142,W0401,W0613,W0614,C0111,C0301,C0103,R0911,R0903,W0108,W0704,W0702,R0201,R0912,R0914,W0110,C0102"
let g:pymode_lint_unmodified = 1

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


" NERDTree
map <C-n> :NERDTreeToggle<CR>


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"


" vim-perl
let perl_fold = 0


" vim-easymotion
map / <plug>(easymotion-sn)
omap / <plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'asdfjkl;weio'

" vim-markdown
let g:vim_markdown_folding_disabled=1


" Other Settings
let mapleader = "`"

set nu
set cursorline

set nowrap

set backupcopy=yes
set backupdir=~/.vim/backup

set termencoding=utf-8
set novisualbell
set t_vb=
set encoding=utf-8
set fileencodings=utf8,cp1251

set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent
set smartindent

set list listchars=tab:→\ ,trail:· "

let python_highlight_all = 1


" Locale settings
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif
