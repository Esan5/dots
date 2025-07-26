return {
    {
        "saghen/blink.cmp",

        version = "1.*",

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "default",
                ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
                ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-d>"] = { "scroll_documentation_down", "fallback" },
                ["<C-u>"] = { "scroll_documentation_up", "fallback" },
            },
            appearance = {
                nerd_font_variant = "mono",
            },
            sources = {
                default = { "lsp", "buffer", "path", "snippets", },
                providers = {
                    lsp = {},
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        score_offset = 100,
                    },
                }
            },
            cmdline = {
                keymap = {
                    preset = "inherit",
                    ["<Tab>"] = { "show", "select_next", "fallback" },
                },
                sources = function()
                    local type = vim.fn.getcmdtype()
                    if type == "/" or type == "?" then
                        return { "buffer" }
                    elseif type == ":" then
                        return { "cmdline" }
                    else
                        return {}
                    end
                end,
            },
            completion = {
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = true,
                    },
                    cycle = {
                        from_bottom = true,
                        from_top = true,
                    },
                },
                menu = {
                    draw = {
                        columns = {
                            { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 },
                        },
                    },
                    auto_show = true,
                },
                documentation = {
                    auto_show = true,
                },
                ghost_text = {
                    enabled = false,
                },
            },
        }
    }
}
