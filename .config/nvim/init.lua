vim.opt.mouse = ""

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 2

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.spell = false
vim.opt.spelllang = "en_us"

vim.opt.termguicolors = true

vim.opt.scrolloff = 5

vim.opt.linebreak = true

vim.opt.exrc = true

vim.g.mapleader = ","

vim.opt.showtabline = 0

vim.lsp.enable({
    "ruff", "pyrefly", -- Python
    "clangd",          -- C/C++
    "lua_ls",
})

require("config.lazy")
require("config.autocommands")
