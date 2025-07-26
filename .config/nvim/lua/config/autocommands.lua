local cmp = vim.api.nvim_create_augroup("cmp", { clear = true })

vim.api.nvim_create_autocmd({ "InsertCharPre" }, {
    group = cmp,
    callback = function()
        if vim.v.char:match("^%w+$") then
            require("blink.cmp").hide({ callback = require("blink.cmp").show })
        end
    end
})
