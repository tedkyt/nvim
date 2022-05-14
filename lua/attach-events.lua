-- Attach event for tagline
local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')
local nvim_version = vim.version()
local version_no = nvim_version.major .. "." .. nvim_version.minor .. "." .. nvim_version.patch

nvim_tree_events.on_tree_open(function ()
    bufferline_state.set_offset(40, "Neovim v" .. version_no)
end)

nvim_tree_events.on_tree_close(function ()
    bufferline_state.set_offset(0)
end)

