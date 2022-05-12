local lsp = require("lspconfig")
local util = require("lspconfig/util")

lsp.gopls.setup {
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod" },
    root_dir = util.root_pattern("go.mod", ".git"),
}
