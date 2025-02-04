-- vim.g.config.path = 'C:\\Users\\aal\\AppData\\Local\\nvim'
-- Definindo a lista de terminais com suas configurações e atalhos

-- {
--     cmd = "ssh -i C:\\Users\\aal\\.ssh\\id_ed25519-remote-ssh aal@chaves.intranet.e-trust.com.br",
--     group = {
--         key = "<leader>tc",
--         desc = "Chaves"
--     }
-- },
vim.g.terminals = {
	{
		cmd = "ssh -i C:\\Users\\aal\\.ssh\\id_ed25519-remote-ssh aal@chaves.intranet.e-trust.com.br",
		group = {
			key = "<leader>tc",
			desc = "Chaves"
		}
	},
	{
		cmd = "ssh -i C:\\Users\\aal\\.ssh\\id_ed25519-remote-ssh aal@zelda.intranet.e-trust.com.br",
		group = {
			key = "<leader>tz",
			desc = "Zelda"
		}
	},
}

vim.g.opts = {
    config = {
        colorscheme = function()
            require('catppuccin').load()
        end,
        icons = {
            misc = {
                dots = "󰇘"
            },
            ft = {
                octo = ""
            },
            dap = {
                Stopped = {"󰁕 ", "DiagnosticWarn", "DapStoppedLine"},
                Breakpoint = " ",
                BreakpointCondition = " ",
                BreakpointRejected = {" ", "DiagnosticError"},
                LogPoint = ".>"
            },
            diagnostics = {
                Error = " ",
                Warn = " ",
                Hint = " ",
                Info = " "
            }
        }
    }
}
