local g = vim.g
local opt = vim.opt
local cmd = vim.api.nvim_command

require("settings")
require("packer-start")

-- Theme
cmd("colorscheme nord")

-- Indent guide
opt.list = true
opt.listchars:append("space:⋅")
require("indent_blankline").setup {
    space_char_blankline = " ",
}

-- LSP
require("lsp")

-- Status line
require("lualine").setup{
    options = { theme = "material" },
}

-- Tabline
require("barbar")

-- File explorer
require("nvim-tree-config")

-- Tagbar
require("tagbar-config")

-- Terminal
require("toggleterm").setup{}

-- Attach events
require("attach-events")

-- Start up actions
require("startup")
