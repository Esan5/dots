vim.keymap.set("n", "<leader><space>", require("snacks.picker").smart)
vim.keymap.set("n", "<leader>/", require("snacks.picker").grep)
vim.keymap.set("n", "<leader>e", require("snacks.picker").explorer)
vim.keymap.set("n", "<leader>;", require("snacks.picker").command_history)

vim.keymap.set("n", "<leader>fs", require("snacks.picker").lsp_workspace_symbols)
vim.keymap.set("n", "<leader>fw", require("snacks.picker").grep_word)
vim.keymap.set("n", "<leader>ff", require("snacks.picker").git_files)
vim.keymap.set("n", "<leader>fc", require("snacks.picker").colorschemes)

vim.keymap.set("n", "<leader>gd", require("snacks.picker").lsp_definitions)
vim.keymap.set("n", "<leader>fr", require("snacks.picker").lsp_references)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format)

-- jump between references within a buffer
vim.keymap.set("n", "]]", function() require("snacks.words").jump(vim.v.count1) end)
vim.keymap.set("n", "[[", function() require("snacks.words").jump(-vim.v.count1) end)

vim.keymap.set("n", "<leader>gl", require("snacks.picker").git_log_file)
vim.keymap.set("n", "<leader>gs", require("snacks.picker").git_status)
vim.keymap.set("n", "<leader>gb", require("snacks.picker").git_branches)

vim.keymap.set({ "n", "i", "v", "o" }, "<C-[>", "<ESC>")
vim.keymap.set("t", "<C-[>", [[<C-\><C-n>]])

vim.keymap.set("c", "<C-[>", "<C-c>")

vim.keymap.set("n", "<leader>dn", function()
    local diagnostic = vim.diagnostic.get_next()
    if diagnostic ~= nil then vim.diagnostic.jump({ diagnostic = diagnostic, float = true }) end
end, { desc = "next diagnostic" })

vim.keymap.set("n", "<leader>dN", function()
    local diagnostic = vim.diagnostic.get_prev()
    if diagnostic ~= nil then vim.diagnostic.jump({ diagnostic = diagnostic, float = true }) end
end, { desc = "previous diagnostic" })

vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float)

-- move lines up and down
vim.keymap.set("n", "_", ":m .-2<CR>==")
vim.keymap.set("n", "-", ":m .+1<CR>==")
vim.keymap.set("v", "-", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "_", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>no", ":nohl<CR>")

-- move between buffers
vim.keymap.set("n", "<TAB>", ":bn<CR>")
vim.keymap.set("n", "<S-TAB>", ":bp<CR>")

-- for macros press "qq" followed by the macro, then "q" to record
-- from there, "<leader>q" will activate the macro
vim.keymap.set("n", "<leader>q", "@q")
vim.keymap.set("v", "<leader>q", ":norm! @q<CR>")

-- search will always center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")
vim.keymap.set({ "n", "v" }, "J", "5gj")
vim.keymap.set({ "n", "v" }, "K", "5gk")
vim.keymap.set({ "n", "v" }, "H", "g^")
vim.keymap.set({ "n", "v" }, "L", "g$")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- system clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>yy", [["+yy]])

-- pasting in visual mode doesn't overwrite your clipboard
vim.keymap.set("v", "p", "pgvy")

-- merge two lines
vim.keymap.set("v", "<C-m>", "J")

vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")

vim.keymap.set({ "i", "c" }, "<leader>", "<leader>")
