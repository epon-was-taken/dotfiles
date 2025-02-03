return {

  -- ################
  -- KUBERNETES
  -- ################

  -- Enables LSP support anf filetype recognition for helm charts
  {
    "towolf/vim-helm",
    ft = "helm",
  },

  -- ################
  -- GIT
  -- ################

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    },
  },

  -- ################
  -- ANSIBLE
  -- ################

  {
    "mfussenegger/nvim-ansible",
    event = { "VeryLazy" },
    -- opts = {},
  },

  -- ################
  -- ASCIIDOC
  -- ################

  {
    'habamax/vim-asciidoctor',
  },

  {
    'tigion/nvim-asciidoc-preview',
    ft = { 'asciidoc' },
    build = 'cd server && npm install',
    opts = {
    -- Add user configuration here
    },
  },

  -- ################
  -- KUBERNETES
  -- ################

  -- Override telescope keybinds to use vim navigation
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup {
        defaults = {
          mappings = {
            i = {
              ['<C-k>'] = require('telescope.actions').move_selection_previous, -- move to prev result
            ['<C-j>'] = require('telescope.actions').move_selection_next, -- move to next result
            ['<C-l>'] = require('telescope.actions').select_default, -- open file
            },
          },
        },
      }
    end
  },

  -- ################
  -- TMUX
  -- ################

  {
    "christoomey/vim-tmux-navigator",
    event = { "VeryLazy" },
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  -- ################
  -- TODOS
  -- ################

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "VeryLazy" },
    opts = {},
  },

 }
