return {
  -- nvim-cmp: The core completion plugin
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- Configure vsnip for snippets
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Confirm completion only when tabbed in.
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },   -- LSP source for autocompletion
          { name = "vsnip" },      -- Snippet source for vsnip
        }, {
          { name = "buffer" },     -- Buffer source (optional)
          { name = "path" },       -- Path source (optional)
        }),
      })
    end,
  },


  -- LSP source for nvim-cmp
  {
    "hrsh7th/cmp-nvim-lsp",
  },

  -- Vsnip completion source for nvim-cmp
  {
    "hrsh7th/cmp-vsnip",
  },

  -- Vsnip: Snippet engine
  {
    "hrsh7th/vim-vsnip",
  },

  -- Optional buffer completion source for nvim-cmp
  {
    "hrsh7th/cmp-buffer",
  },

  -- Optional path completion source for nvim-cmp
  {
    "hrsh7th/cmp-path",
  },
}
