return {
    cmd = { "uv", "tool", "run", "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", "venv", ".venv", ".git" },
    capabilities = require("blink.cmp").get_lsp_capabilities(nil, true)
}
