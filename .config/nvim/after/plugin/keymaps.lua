vim.keymap.set("n", "<leader><space>", require("snacks.picker").smart)
vim.keymap.set("n", "<leader>/", require("snacks.picker").grep)
vim.keymap.set("n", "<leader>e", require("snacks.picker").explorer)
vim.keymap.set("n", "<leader>;", require("snacks.picker").command_history)
vim.keymap.set("n", "<leader>l", require("snacks.picker").lines)
vim.keymap.set("n", "<leader>b", require("snacks.picker").buffers)

vim.keymap.set("n", "<leader>fs", require("snacks.picker").lsp_workspace_symbols)
vim.keymap.set("n", "<leader>fw", require("snacks.picker").grep_word)
vim.keymap.set("n", "<leader>ff", require("snacks.picker").git_files)
vim.keymap.set("n", "<leader>fc", require("snacks.picker").colorschemes)

vim.keymap.set("n", "<leader>gd", require("snacks.picker").lsp_definitions)
vim.keymap.set("n", "<leader>gr", require("snacks.picker").lsp_references)
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)

-- jump between references within a buffer
vim.keymap.set("n", "]]", function() require("snacks.words").jump(vim.v.count1) end)
vim.keymap.set("n", "[[", function() require("snacks.words").jump(-vim.v.count1) end)

vim.keymap.set("n", "<leader>gl", require("snacks.picker").git_log_file)
vim.keymap.set("n", "<leader>gs", require("snacks.picker").git_status)
vim.keymap.set("n", "<leader>gb", require("snacks.git").blame_line)

vim.keymap.set({ "n", "i", "v", "o" }, "<c-[>", "<esc>")
vim.keymap.set("t", "<c-[>", [[<c-\><c-n>]])

vim.keymap.set("c", "<c-[>", "<c-c>")

vim.keymap.set("n", "<leader>dn", function()
    local diagnostic = vim.diagnostic.get_next()
    if diagnostic ~= nil then vim.diagnostic.jump({ diagnostic = diagnostic, float = true }) end
end, { desc = "next diagnostic" })

vim.keymap.set("n", "<leader>dp", function()
    local diagnostic = vim.diagnostic.get_prev()
    if diagnostic ~= nil then vim.diagnostic.jump({ diagnostic = diagnostic, float = true }) end
end, { desc = "previous diagnostic" })

vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float)

-- move lines up and down
vim.keymap.set("n", "_", ":m .-2<cr>==")
vim.keymap.set("n", "-", ":m .+1<cr>==")
vim.keymap.set("v", "-", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "_", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "<leader>no", ":nohl<cr>")

-- move between buffers
vim.keymap.set("n", "<tab>", ":bn<cr>")
vim.keymap.set("n", "<s-tab>", ":bp<cr>")

-- for macros press "qq" followed by the macro, then "q" to record
-- from there, "<leader>q" will activate the macro
vim.keymap.set("n", "<leader>q", "@q")
vim.keymap.set("v", "<leader>q", ":norm! @q<cr>")

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

vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>yy", [["+yy]])

vim.keymap.set("v", "p", "pgvy")

vim.keymap.set("v", "<c-m>", "J")

vim.keymap.set("i", "{<cr>", "{<cr>}<esc>O")

vim.keymap.set({ "i", "c" }, "<leader>", "<leader>")
