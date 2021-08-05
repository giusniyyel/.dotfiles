-- go get github.com/mattn/efm-langserver
require "lspconfig".efm.setup {
    cmd = {"efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {formatCommand = "lua-format -i", formatStdin = true}
            }
        }
    }
}
