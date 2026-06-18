-- ~/.config/nvim/lua/plugins.lua
return {
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
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
}

