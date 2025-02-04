return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    keys = {{
        "\\",
        function()
            require("neo-tree.command").execute({
                toggle = true,
                dir = vim.uv.cwd()
            })
        end,
        desc = "Explorer NeoTree (cwd)"
    }},
    deactivate = function()
        vim.cmd([[Neotree close]])
    end,
    config = function()
        require("neo-tree").setup({
            filesystem = {
                follow_current_file = true,
                window = {
                    position = "left",
                    width = 30
                }
            },
            window = {
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["<space>"] = "none",
                    ["Y"] = {
                        function(state)
                            local node = state.tree:get_node()
                            local path = node:get_id()
                            vim.fn.setreg("+", path, "c")
                        end,
                        desc = "Copy Path to Clipboard"
                    },
                    ["P"] = {
                        "toggle_preview",
                        config = {
                            use_float = false
                        }
                    }
                },
                width = 30
            },
            default_component_configs = {
                indent = {
                    with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander"
                }
            }
        })
    end
}
