return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    capabilities = require("blink.cmp").get_lsp_capabilities(nil, true)
}
