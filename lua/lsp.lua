local lsp = require("lspconfig")
local util = require("lspconfig/util")

local on_attach = function(client, bufnr)
    client.config.root_dir = vim.fn.getcwd()
    vim.api.nvim_set_current_dir(client.config.root_dir)
end

lsp.gopls.setup {
    default_config = {
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gotmpl" },
        root_dir = util.root_pattern("go.mod", ".git"),
        on_attach = on_attach
    }
}
