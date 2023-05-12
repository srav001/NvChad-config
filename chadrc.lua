---@type ChadrcConfig
local M = {}

vim.wo.relativenumber = true
local highlights = require "custom.highlights"

M.ui = {
  theme = "yoru",
  theme_toggle = { "yoru", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode_colored",
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
