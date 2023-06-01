---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<C-d>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },

  i = {
    ["<C-d>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}


return M
