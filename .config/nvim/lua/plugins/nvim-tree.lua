return {
  {  
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = verylazy,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

}
