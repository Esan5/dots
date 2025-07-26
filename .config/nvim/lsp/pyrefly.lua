return {
    cmd = { "uv", "tool", "run", "pyrefly", "lsp" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "venv", ".venv", ".git" },
    capabilities = require("blink.cmp").get_lsp_capabilities(nil, true)
}
