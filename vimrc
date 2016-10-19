set nocompatible

" Vundle init
" run :PluginInstall or vim +PluginInstall +qall after changing
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'
call vundle#end()
filetype plugin indent on

" Add pathogen
"execute pathogen#infect()

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

" Highlight the last used search pattern and enable incremental searching
set hlsearch
set incsearch

" Turn on wildmenu for easier tab-completion
set wildmenu

" Enable file type detection.
filetype plugin indent on

" Force terminal to use 256 colors
set t_Co=256

colorscheme vividchalk
"colorscheme wombat256
"colorscheme desert

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Use spaces instead of tabs and set tab size
set expandtab
set tabstop=2
set shiftwidth=2

" Prevents delay when pressing esc in insert mode
set ttimeoutlen=1

set colorcolumn=80
set nowrap
set list

" Portable stuff
" set nobackup
" set nowritebackup
" set noswapfile
" set viminfo+=n$VIM/_viminfo

" stop beeping
set visualbell

let mapleader = ','
" Buffers
nnoremap gb :ls<CR>:b<Space>


nnoremap <leader>i :set list!<cr>

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap * *<c-o>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>

nnoremap K :q<cr>

nnoremap <leader>h ^
nnoremap <leader>l $

nnoremap <leader>sv :source $MYVIMRC<cr>

set textwidth=80

nnoremap Y y$

set relativenumber

