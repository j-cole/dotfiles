vim.g.mapleader = " "

vim.opt.colorcolumn = "80"
vim.opt.hlsearch = false
vim.opt.list = true
vim.opt.listchars = "nbsp:¬,tab:»·,trail:·,extends:>"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.syntax = "ON"
vim.opt.textwidth = 79
vim.opt.visualbell = true
vim.opt.wrap = false

-- Use spaces instead of tabs and set tab size
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.keymap.set("n", "<leader>ev", ":vsplit $MYVIMRC<cr>")
vim.keymap.set("n", "<leader>sv", ":source $MYVIMRC<cr>")

vim.keymap.set("n", "<leader><leader>", "<C-^>")

vim.keymap.set("n", "<leader>i", ":set list!<cr>")

vim.keymap.set("n", "*", "*<c-o>")

vim.keymap.set("n", "gb", ":ls<CR>:b<Space>")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


--[[
call plug#begin('$XDG_DATA_HOME/vim/plugged')
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
  Plug 'junegunn/fzf', { 'dir': '~/.local/share/fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'rust-lang/rust.vim'
  Plug 'sainnhe/sonokai'
  Plug 'tpope/vim-fugitive'
call plug#end()

" Enable file type detection.
filetype plugin indent on

let g:sonokai_style = 'default'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai
"colorscheme vividchalk
"colorscheme wombat256
"colorscheme desert

" fzf
nnoremap <C-p> :Files<cr>
nnoremap <leader>gd :Files ~/code/dotfiles<cr>

" languageclient-neovim
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd', '-background-index',],
  \ 'go': ['gopls'],
  \ 'rust': ['rust-analyzer'],
  \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
]]--
