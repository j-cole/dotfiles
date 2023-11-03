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

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>fd", function()
        builtin.git_files({
          cwd = "~/code/dotfiles",
          no_ignore = true,
        })
      end)
      vim.keymap.set("n", "<leader>ff", builtin.find_files)
      vim.keymap.set("n", "<leader>fg", builtin.git_files)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "c", "cpp", "lua", "rust" },
        sync_install = false,
        auto_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.sonokai_style = "default"
      vim.g.sonokai_enable_italic = 0
      vim.g.sonokai_disable_italic_comment = 1
    end,
    config = function()
      vim.cmd([[colorscheme sonokai]])
    end
  },
  "tpope/vim-fugitive",
})

--[[
call plug#begin('$XDG_DATA_HOME/vim/plugged')
  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
  Plug 'rust-lang/rust.vim'
call plug#end()


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
