return {
  -- Install Mason Packages
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "ansible-lint",
        "bash-language-server",
        "shfmt",
        "gopls",
        "golangci-lint",
        "gofumpt",
        "helm-ls",
      },
    },
  },

  -- Set formatters by filetype
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          sh = { "shfmt" },
          go = { "gofumpt" },
        },
      }
      return opts
    end,
  },

  {
    "qvalentin/helm-ls.nvim",
    ft = "helm",
    opts = {},
  },

  -- Ansible filetype detection and useful functions
  {
    "mfussenegger/nvim-ansible",
    event = { "VeryLazy" },
    keys = {
      {
        "<leader>te",
        function()
          require("ansible").run()
        end,
        desc = "Run Ansible Playbook",
        { buffer = true, silent = true },
      },
    },
  },
}
