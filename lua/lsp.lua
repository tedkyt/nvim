
local lsp = require("lspconfig")
local util = require("lspconfig/util")

lsp.gopls.setup {
    cmd = { "gopls", "--remote=auto" },
    filetypes = { "go", "gomod" },
    root_dir = util.root_pattern("go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        }
    }
}
