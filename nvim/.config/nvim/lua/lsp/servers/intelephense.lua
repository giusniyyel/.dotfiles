local util = require 'lspconfig/util'

require'lspconfig'.intelephense.setup {
  cmd = {"intelephense", "--stdio"},
  filetypes = { "php" },
  root_dir = util.root_pattern("composer.json", ".git"),
}
