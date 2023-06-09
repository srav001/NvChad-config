local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
vim.diagnostic.config {
  update_in_insert = true,
}

local servers = { "tsserver", "eslint", "volar", --[[ "html", "cssls", ]] --[[ "tailwindcss", ]] --[[ "astro", ]] --[[ "svelte", ]] --[[ "unocss", ]] }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Eslint auto fix command
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.tsx', '*.ts', '*.jsx', '*.js', '*.vue', '*.svelte', '*.astro' },
  command = 'silent! EslintFixAll',
  group = vim.api.nvim_create_augroup('MyAutocmdsForEslintAutoFix', {}),
})

