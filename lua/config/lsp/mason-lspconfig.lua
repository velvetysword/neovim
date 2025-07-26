local servers = require "languages.servers"

require("mason-lspconfig").setup({
    ensure_installed = servers,
})

