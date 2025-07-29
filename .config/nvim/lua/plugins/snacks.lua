return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            dashboard = {
                enabled = true,
                sections = {
                    { section = "header" },
                    { section = "keys",  gap = 1,                padding = 1 },
                    { pane = 2,          title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { pane = 2,          title = "Projects",     section = "projects",     indent = 2, padding = 1 },
                    {
                        pane = 2,
                        title = "Git Status",
                        section = "terminal",
                        enabled = function()
                            return require("snacks.git").get_root() ~= nil
                        end,
                        cmd = "git status --short --branch --renames",
                        height = 5,
                        padding = 1,
                        ttl = 5 * 60,
                        indent = 2,
                    },
                    { section = "startup" },
                },
            },
            explorer = { enabled = true },
            indent = {
                enabled = true,
                animate = { enabled = false },
            },
            input = { enabled = true },
            picker = {
                enabled = true,
                win = {
                    input = {
                        keys = {
                            ["<C-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
                            ["<C-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
                        },
                    },
                    list = {
                        keys = {
                            ["<C-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
                            ["<C-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
                        },
                    },
                }
            },
            notifier = { enabled = true },
            statuscolumn = { enabled = true },
            words = {
                enabled = true,
                modes = { "n" },
            },
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
