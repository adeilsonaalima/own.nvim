function setup_terminals(configs)
    local Terminal = require('toggleterm.terminal').Terminal

    for _, config in ipairs(configs) do
        local map = vim.keymap.set

        local function capitalize(str)
            return str:sub(1, 1):upper() .. str:sub(2):lower()
        end

        local terminal = Terminal:new({
            cmd = config.cmd,
            hidden = true,
            direction = "float"
        })

        local function toggle_terminal(direction)
            terminal.direction = direction
            terminal:toggle()
        end

        map("n", config.group.key, "", {
            desc = config.group.desc
        })

        for _, direction in ipairs({"float", "horizontal", "vertical"}) do
            local key = config.group.key .. (direction == "float" and "f" or direction == "horizontal" and "h" or "v")
            local desc = capitalize(direction)
            map("n", key, function()
                toggle_terminal(direction)
            end, {
                desc = desc
            })
        end
    end
end

return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup()
        setup_terminals(vim.g.terminals)

        local map = vim.keymap.set

        map("t", "<leader>q", [[<C-\><C-n>:q<CR>]], {})
        map("t", "<leader>h", [[<Cmd>wincmd h<CR>]], {})
        map("t", "<leader>j", [[<Cmd>wincmd j<CR>]], {})
        map("t", "<leader>k", [[<Cmd>wincmd k<CR>]], {})
        map("t", "<leader>l", [[<Cmd>wincmd l<CR>]], {})
    end
}