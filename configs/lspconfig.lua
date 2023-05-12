local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
vim.diagnostic.config {
  update_in_insert = true,
}

local servers = { --[[ "html", "cssls", ]] --[[ "tailwindcss" ]] "tsserver", "eslint", "volar" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.tsx', '*.ts', '*.jsx', '*.js', '*.vue', '*.svelte' },
  command = 'silent! EslintFixAll',
  group = vim.api.nvim_create_augroup('MyAutocmdsForEslintAutoFix', {}),
})
