return {
    cmd = { "clangd" },
    filetypes = { "c", "cpp" },
    root_markers = { "compile_commands.json", ".clang-format", ".clangd", ".git" },
    capabilities = require("blink.cmp").get_lsp_capabilities(nil, true)
}
