" This must be first, because it changes other options as a side effect.
set nocompatible

" Enable mouse in terminal
set mouse=a

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

set number

" display incomplete commands
set showcmd

" Switch syntax highlighting on
syntax on

" Switch on highlighting the last used search pattern and do incremental searching
set hlsearch
set incsearch

" Turn on wildmenu for easier tab-completion
set wildmenu

" Enable file type detection.
filetype plugin indent on

" Force terminal to use 256 colors
set t_Co=256

colorscheme wombat256
" colorscheme desert

" Remove toolbar
set guioptions-=T

set guifont=Inconsolata\ 13
" set guifont=Triskweline_10:h10
" set guifont=Monospace\ 12

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Use spaces instead of tabs and set tab size
set expandtab
set tabstop=2
set shiftwidth=2

" Prevents delay when pressing esc in insert mode
set ttimeoutlen=1
