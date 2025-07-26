local configs = require("nvim-treesitter.configs")
local trees = require "languages.trees"

configs.setup {
  ensure_installed = trees,
  sync_install = false,
  ignore_install = { "" },
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
