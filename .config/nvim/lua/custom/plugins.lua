local plugins = {

  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'black',
        'pyright',
        'ruff',
        'mypy',
        "debugpy",
      },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function ()
      local dap = require ("dap")
      local dapui = require ("dapui")
      dapui.setup ()
      dap.listeners.after.event_initialized["dapui_config"] = function ()
        dapui.open ()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function ()
        dapui.close ()
      end
      dap.listeners.before.event_exited["dapui_config"] = function ()
        dapui.close ()
      end
    end
  },

  {
    "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("core.utils").load_mappings ("dap")
    end
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings ("dap_python")
    end,
  },

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

  {
    'kdheepak/lazygit.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  {
    'jose-elias-alvarez/null-ls.nvim',
    ft = {'python'},
    opts = function ()
      return require 'custom.configs.null-ls'
    end,
  }

}

return plugins
