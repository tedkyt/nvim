local timer = vim.loop.new_timer()

timer:start(0, 8000, vim.schedule_wrap(function()
    -- Toggle Nvim-Tree
    local nvimtree = require("nvim-tree")
    nvimtree.toggle(false, true)
    
    -- Toggle Tagbar
    vim.cmd([[:TagbarToggle]])

    -- Stop timer to stop repeating
    timer:close()
end))
