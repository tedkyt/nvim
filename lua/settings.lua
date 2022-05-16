local cmd = vim.api.nvim_command
local g = vim.g
local opt = vim.opt
local map = vim.api.nvim_set_keymap

cmd([[
    set encoding=UTF-8
    set nocompatible
    set showmatch
    set ignorecase
    set hlsearch
    set incsearch
    set tabstop=4
    set softtabstop=4
    set expandtab
    set shiftwidth=4
    set autoindent
    set number
    set wildmode=longest,list
    set cc=200
    filetype plugin indent on
    syntax on
    set mouse=a
    set clipboard=unnamedplus
    set cursorline
    set ttyfast
    set termguicolors
]])

g.mapleader = ";"
map("i", ";;", "<Esc>", { noremap = true, silent = true })
map("n", "<leader>l", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })
map("n", "<leader>k", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", "<leader>m", ":ToggleTerm size=15 dir=~/Projects direction=horizontal<CR>", { noremap = true, silent = true })
map("n", "<leader>n", ":TagbarToggle<CR>", { noremap = true, silent = true })

-- Auto exit if NvimTree is the last one in buffer
cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
