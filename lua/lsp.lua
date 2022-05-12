local configs = require("lspconfig/configs")
local util = require("lspconfig/util")

configs.gopls = {
    default_config = {
        cmd = { "gopls" },
        filetypes = { "go", "gomod" },
        root_dir = util.root_pattern("go.mod", ".git")
    }
}

require("lspconfig").gopls.setup{}
