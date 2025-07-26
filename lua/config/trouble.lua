-- Ensure you have nvim-lspconfig installed
require('lspconfig').zls.setup{}

-- Configure diagnostic signs
vim.fn.sign_define("DiagnosticSignError", {text = "❌", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "⚠️", texthl = "DiagnosticSignWarn"})

-- Enable virtual text for diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})
