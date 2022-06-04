return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Theme
    use "EdenEast/nightfox.nvim"

    -- Indent guide
    use "lukas-reineke/indent-blankline.nvim"

    -- LSP
    use "neovim/nvim-lspconfig"

    -- Auto completion
    use "nvim-lua/completion-nvim"

    -- Status line
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons" }
    }

    -- Tabline
    use {
        "romgrk/barbar.nvim",
        requires = { "kyazdani42/nvim-web-devicons" }
    }

    -- File explorer
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons",
        },
    }

    -- Tagbar
    use "preservim/tagbar"

    -- Terminal
    use {
        "akinsho/toggleterm.nvim",
        tag = "v1.*",
        config = function()
            require("toggleterm").setup()
        end
    }
end)
