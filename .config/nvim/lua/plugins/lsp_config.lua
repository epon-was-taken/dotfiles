-- Define a global array of language servers
local lsp_servers = { "pyright", "rust_analyzer", "lua_ls", "ansiblels" }
local linters = { "ansible-lint", "yamllint" }

-- Import cmp_nvim_lsp to get default LSP capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Mason and LSP Configuration
return {
  -- Mason plugin for managing external editor tooling
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        -- Add any Mason-specific settings here if needed
      })
    end,
  },

  -- Mason-LSPConfig plugin to bridge Mason and LSP configuration
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = lsp_servers, -- Install the servers defined in the global array
      })
    end,
  },

  {
    "mfussenegger/nvim-lint"
  },

  {
    "rshkarin/mason-nvim-lint",
    config = function ()
      require("mason-nvim-lint").setup({
        ensure_installed = linters,
      })
    end,
  },

  -- nvim-lspconfig plugin to configure LSP servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Loop through each server in the global array and set them up
      for _, server in ipairs(lsp_servers) do
        lspconfig[server].setup({
          capabilities = capabilities, -- Pass the cmp-nvim-lsp capabilities here
          -- Example settings for sumneko_lua (lua_ls) language server
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" }, -- Recognize 'vim' as a global for Neovim
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true), -- Neovim runtime files
                checkThirdParty = false, -- Disable third-party library popup
              },
              telemetry = { enable = false }, -- Disable telemetry
            },
          },
        })
      end
    end,
  },
}
