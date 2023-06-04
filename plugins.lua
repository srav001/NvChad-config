local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
        opts = {}
      }
    },
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
  },

  {
    "mg979/vim-visual-multi",
    lazy = false,
  },

  { import = "custom.extras.symbols-outline" },
  { import = "custom.extras.copilot" },
  { import = "custom.extras.trouble" },

  {
    "echasnovski/mini.indentscope",
    version = "*",
    config = function()
      require('mini.indentscope').setup()
    end,
    lazy = false
  },
  {
    "echasnovski/mini.move",
    version = "*",
    config = function()
      require('mini.move').setup()
    end,
    lazy = false
  },
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup()
    end,
    lazy = false,
  },
}
return plugins
