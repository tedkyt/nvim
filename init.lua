local g = vim.g
local opt = vim.opt
local cmd = vim.api.nvim_command

require("settings")
require("packer-start")

-- File explorer
require("nvim-tree-config")

-- LSP
require("lsp")

-- Tabline
require("barbar")

-- Status line
require("lualine").setup{
    options = { theme = "material" },
}

-- Indent guide
opt.list = true
opt.listchars:append("space:⋅")
require("indent_blankline").setup {
    space_char_blankline = " ",
}

-- Terminal
require("toggleterm").setup{}

-- Theme
cmd("colorscheme nord")
