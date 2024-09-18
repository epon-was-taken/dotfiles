return {
  
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Choose your favorite flavour: latte, frappe, macchiato, mocha
	      transparent_background = true,
	      integrations = {
	        telescope = true,
          treesitter = true,
          cmp = true,
          gitsigns = true,
          nvimtree = true,
	      },
      })

      -- Set the colorscheme to catppuccin after setup
      vim.cmd.colorscheme("catppuccin")
    end
  }

}
