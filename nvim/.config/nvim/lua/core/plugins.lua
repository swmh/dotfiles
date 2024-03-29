local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({

    -- OpenApi 3 viewer

    {'rusagaib/oas-preview.nvim'},

    { 'Exafunction/codeium.vim' },

    {
        -- amongst your other plugins
        {'akinsho/toggleterm.nvim', version = "*", config = true}
        -- or
        -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}}
    },



    { "ThePrimeagen/harpoon" },

    -- Which key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- Highlight TODO
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- dbdiagram.io
    { 'jidn/vim-dbml' },

    -- Themes
    { 'rebelot/kanagawa.nvim' },
    { 'Shatur/neovim-ayu' },
    { "catppuccin/nvim",      name = "catppuccin", priority = 1000 },

    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    { 'phaazon/hop.nvim' },
    { 'numToStr/Comment.nvim',               config = true },
    { 'windwp/nvim-autopairs',               config = true },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    { "folke/neodev.nvim",               opts = {} },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim",         build = ":MasonUpdate" },
    { 'neovim/nvim-lspconfig' },
    { 'jose-elias-alvarez/null-ls.nvim' },

    -- Debugger
    { 'mfussenegger/nvim-dap' },
    { "rcarriga/nvim-dap-ui",            dependencies = { "mfussenegger/nvim-dap" } },
    { 'leoluz/nvim-dap-go' },

    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip',                version = "v1.*",                          build = "make install_jsregexp" },

    -- Golang
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", 'gomod' },
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },


    -- Markdown
    { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        enabled = true,
        ft = "markdown",
    },


})
