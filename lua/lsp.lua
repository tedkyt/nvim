local nvim_lsp = require("lspconfig")
local lsp_util = require("lspconfig/util")

local on_attach_rust = function(client)
    require("completion").on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach = on_attach_rust,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

nvim_lsp.gopls.setup {
    settings = {
        cmd = { "gopls", "serve" },
        filetypes = { "go", "gomod" },
        root_dir = lsp_util.root_pattern("go.mod", ".git"),
    }
}

vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync(nil, 1000)]])
