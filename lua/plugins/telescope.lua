return {{
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        require("telescope").setup()
    end
}, {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {require("telescope.themes").get_dropdown({})}
            }
        })

        require("telescope").load_extension("ui-select")
    end
}, {
    "nvim-telescope/telescope-frecency.nvim",
    dependencies = {"nvim-telescope/telescope.nvim"},
    config = function()
        require("telescope").setup({
            extensions = {
                frecency = {
                    show_scores = true, -- Exibe a pontuação dos arquivos
                    show_unindexed = true, -- Exibe arquivos não indexados
                    ignore_patterns = {"*.git/*", "*/tmp/*"} -- Ignora padrões específicos
                }
            }
        })

        -- Carregar a extensão de histórico de arquivos
        require("telescope").load_extension("frecency")
    end
}}
