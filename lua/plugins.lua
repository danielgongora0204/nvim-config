-- ~/.config/nvim/lua/plugins.lua
return {
    -- Theme
    {
        "catppuccin/nvim",
        name = "catppuccin",   -- stable name for lazy.nvim
        priority = 1000,       -- load before other plugins
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
	            transparent_background = true,
            	auto_integrations = true,
                dim_inactive = {
                   enabled = true,
                   shade = "dark",
                   percentage = 0.70,
                },
            })
            vim.cmd.colorscheme "catppuccin-nvim"
        end,
    },
    -- Practice
    {
        "ThePrimeagen/vim-be-good",
        cmd = "VimBeGood",
    },
    -- Telescope
    {
        "nvim-telescope/telescope.nvim"
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>" },
            { "<leader>fd", "<cmd>Telescope live_grep<cr>" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
        },
    },
    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter"
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = { "c", "javascript", "typescript", "kotlin", "lua", "markdown", "bash", "java", "scala" },
                highlight = { enable = true },
            })
        end,
    },
    -- LSP
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("kotlin_lsp")
        end,
    },
    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({ options = { theme = "auto" } })
        end,
    },
}

