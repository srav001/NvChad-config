local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "vue",
    "json",
    -- "scss",
    -- "astro",
    -- "svelte",
    -- "markdown",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "prettier",
    "eslint-lsp",
    "lua-language-server",
    "vue-language-server",
    "typescript-language-server",
    -- "css-lsp",
    -- "html-lsp",
    -- "unocss-language-server",
    -- "astro-language-server",
    -- "svelte-language-server",
    -- "tailwindcss-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

return M
