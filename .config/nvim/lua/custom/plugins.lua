local plugins = {

  {
    "folke/todo-comments.nvim",
    lazy = false,
    opts = {}
  },

  {
    'pearofducks/ansible-vim',
    lazy = false
  },

  {
    'neovim/nvim-lspconfig',
    config = function ()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },

  {
    'ErichDonGubler/lsp_lines.nvim',
    config = function ()
      require('ls_lines').setup()
    end,
  },

}

return plugins
