local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.opts = {
	config = {
		colorscheme = function()
			require('catppuccin').load()
		end,
		icons = {
			misc = {
				dots = "󰇘",
			},
			ft = {
				octo = "",
			},
			dap = {
				Stopped             = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
				Breakpoint          = " ",
				BreakpointCondition = " ",
				BreakpointRejected  = { " ", "DiagnosticError" },
				LogPoint            = ".>",
			},
			diagnostics = {
				Error = " ",
				Warn  = " ",
				Hint  = " ",
				Info  = " ",
			},
		}
	}
}

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	opts = vim.g.opts.config,
	checker = { enabled = true, notify = false },
})

vim.cmd.colorscheme "catppuccin"
