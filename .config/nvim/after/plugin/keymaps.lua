vim.keymap.set("n", "<leader><space>", require("snacks.picker").smart, { desc = "smart file finder" })
vim.keymap.set("n", "<leader>/", require("snacks.picker").grep, { desc = "grep" })
vim.keymap.set("n", "<leader>e", require("snacks.picker").explorer, { desc = "explorer" })
vim.keymap.set("n", "<leader>:", require("snacks.picker").command_history, { desc = "commands" })
vim.keymap.set("n", "<leader>fs", require("snacks.picker").lsp_workspace_symbols, { desc = "find symbol" })

vim.keymap.set("n", "<leader>fw", require("snacks.picker").grep_word, { desc = "find word" })
vim.keymap.set("n", "<leader>ff", require("snacks.picker").git_files, { desc = "find files" })

vim.keymap.set("n", "<leader>so", require("snacks.scratch").open, { desc = "scratch" })
vim.keymap.set("n", "<leader>ss", require("snacks.scratch").select, { desc = "select scratch" })

vim.keymap.set("n", "<leader>gd", require("snacks.picker").lsp_definitions, { desc = "goto definitions" })
vim.keymap.set("n", "<leader>gr", require("snacks.picker").lsp_references, { desc = "goto references" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code action" })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "show hover" })

vim.keymap.set("n", "<leader>gb", require("snacks.git").blame_line, { desc = "git blame" })

vim.keymap.set({ "n", "i", "v", "o" }, "<C-[>", "<ESC>")
vim.keymap.set("t", "<C-[>", [[<C-\><C-n>]])

vim.keymap.set("c", "<C-[>", "<C-c>")

vim.keymap.set("n", "<leader>dn", vim.diagnostic.get_next, { desc = "next diagnostic" })
vim.keymap.set("n", "<leader>dN", vim.diagnostic.get_prev, { desc = "previous diagnostic" })
vim.keymap.set("n", "<leader>dh", vim.diagnostic.open_float, { desc = "diagnostic hover" })

vim.keymap.set("n", "_", ":m .-2<CR>==", { desc = "move line down" })
vim.keymap.set("n", "-", ":m .+1<CR>==", { desc = "move line up" })

vim.keymap.set("n", "<leader>no", ":nohl<CR>", { desc = "no highlight" })

vim.keymap.set("n", "<tab>", ":bn<CR>", { desc = "next tab" })
vim.keymap.set("n", "<S-tab>", ":bp<CR>", { desc = "previous tab" })

-- For macros press "qq" followed by the macro, then "q" to record
-- From there, "<leader>q" will activate the macro
vim.keymap.set("n", "<leader>q", "@q", { desc = "apply macro" })
vim.keymap.set("v", "<leader>q", ":norm! @q<CR>", { desc = "apply macro to selection" })

vim.keymap.set("n", "n", "nzzzv", { desc = "next search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "previous search" })

vim.keymap.set({ "n", "v" }, "j", "gj")
vim.keymap.set({ "n", "v" }, "k", "gk")
vim.keymap.set({ "n", "v" }, "J", "5gj")
vim.keymap.set({ "n", "v" }, "K", "5gk")
vim.keymap.set({ "n", "v" }, "H", "g^")
vim.keymap.set({ "n", "v" }, "L", "g$")

vim.keymap.set("v", "-", ":m '>+1<CR>gv=gv", { desc = "move selection up" })
vim.keymap.set("v", "_", ":m '<-2<CR>gv=gv", { desc = "move selection down" })
vim.keymap.set("v", "<", "<gv", { desc = "unindent selection" })
vim.keymap.set("v", ">", ">gv", { desc = "indent selection" })

vim.keymap.set("v", "<leader>y", [["+y]], { desc = "copy to system clipboard" })
vim.keymap.set("n", "<leader>yy", [["+yy]], { desc = "copy to system clipboard" })

vim.keymap.set("v", "p", "pgvy")

vim.keymap.set("v", "<C-m>", "J")

vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")

vim.keymap.set({ "i", "c" }, "<leader><leader>", "<leader>")
