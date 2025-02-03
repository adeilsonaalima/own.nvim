return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts_extend = { "spec" },
	opts = {
		preset = "helix",
		defaults = {},
		spec = {
			{
				mode = { "n", "v" },
				{ "<leader><tab>", group = "Tabs" },
				{ "<leader>c", group = "Code", icon = { icon = "", color = "cyan" } },
				{ "<leader>d", group = "Debug" },
				{ "<leader>dp", group = "Profiler" },
				{ "<leader>f", group = "Find", icon = { icon = "", color = "cyan" } },
				{ '<leader>fp', ':Telescope projects<CR>', desc = 'Project', icon = { icon = "", color = "cyan" } },
				{ "<leader>ff", ':Telescope find_files<CR>', desc = "Files", icon = { icon = "", color = "cyan" } },
				{ "<leader>fg", ':Telescope live_grep<CR>', desc = "Grep", icon = { icon = "", color = "cyan" } },
				{ "<leader>fb", ':Telescope buffers<CR>', desc = "Buffers", icon = { icon = "", color = "cyan" } },
				{ "<leader>mt", ':Telescope help_tags<CR>', desc = "Telescope", icon = { icon = "", color = "cyan" } },
				{ "<leader>fc", ":Telescope ~/.config/nvim<CR>", desc = "Config", icon = { icon = "", color = "cyan" } },
				{ "<leader>uc", ":Telescope colorscheme<CR>", desc = "Colorscheme", icon = { icon = "", color = "cyan" } },
				{ "<leader>g", group = "Git" },
				{ "<leader>gh", group = "Hunks" },
				{ "<leader>p", group = "Packages", icon = { icon = "󰏗", color = "cyan"} },
				{ "<leader>pm", ":Mason<CR>", icon = { icon = "󰏖", color = "cyan"} },
				{ "<leader>q", group = "Quit", icon = { icon = "󰈆", color = "cyan" } },
				{ "<leader>qq", ":qa<CR>", desc = "Quit all", icon = { icon = "󰈆", color = "cyan" } },
				{ "<leader>qx", group = "Save & quit", icon = { icon = "", color = "cyan" } },
				{ "<leader>qxc", ":x<CR>", desc = "Current" },
				{ "<leader>qxa", ":xa<CR>", desc = "All" },
				{ "<leader>u", group = "UI", icon = { icon = "󰙵 ", color = "cyan" } },
				{ "<leader>x", group = "Diagnostics/quickfix", icon = { icon = "󱖫 ", color = "cyan" } },
				{ "[", group = "Prev" },
				{ "]", group = "Next" },
				{ "g", group = "Goto" },
				{ "gs", group = "Surround" },
				{ "z", group = "Fold" },
				{
					"<leader>w",
					group = "Windows",
					proxy = "<c-w>",
					expand = function()
						return require("which-key.extras").expand.win()
					end,
				},
				{ "gx", desc = "Open with system app" },
				{ "<leader>m", group = "Help", icon = { icon = "", color = "cyan" } },
				{ "<leader>b", group = "Buffer", icon = { icon = "", color = "cyan" } },
				{ '<leader>bn', ':BufferLineCycleNext<CR>', desc = "Next" , icon = { icon = "󰮲", color = "cyan" } },
				{ '<leader>bp', ':BufferLineCyclePrev<CR>', desc = "Prev" , icon = { icon = "󰮰", color = "cyan" } },
				{ '<leader>mb', ':h bufferline<CR>', desc = "Bufferline" , icon = { icon = "", color = "cyan" } },
				{ '<leader>b1', ':lua require("bufferline").go_to(1)<CR>', desc = "Go to buffer 1" , icon = { icon = "󰬺", color = "cyan" } },
				{ '<leader>b2', ':lua require("bufferline").go_to(2)<CR>', desc = "Go to buffer 2" , icon = { icon = "󰬻", color = "cyan" } },
				{ '<leader>b3', ':lua require("bufferline").go_to(3)<CR>', desc = "Go to buffer 3" , icon = { icon = "󰬼", color = "cyan" } },
				{ '<leader>b4', ':lua require("bufferline").go_to(4)<CR>', desc = "Go to buffer 4" , icon = { icon = "󰬽", color = "cyan" } },
				{ '<leader>b5', ':lua require("bufferline").go_to(5)<CR>', desc = "Go to buffer 5" , icon = { icon = "󰬾", color = "cyan" } },
				{ '<leader>b6', ':lua require("bufferline").go_to(6)<CR>', desc = "Go to buffer 6" , icon = { icon = "󰬿", color = "cyan" } },
				{ '<leader>b7', ':lua require("bufferline").go_to(7)<CR>', desc = "Go to buffer 7" , icon = { icon = "󰭀", color = "cyan" } },
				{ '<leader>b8', ':lua require("bufferline").go_to(8)<CR>', desc = "Go to buffer 8" , icon = { icon = "󰭁", color = "cyan" } },
				{ '<leader>b9', ':lua require("bufferline").go_to(9)<CR>', desc = "Go to buffer 9" , icon = { icon = "󰭂", color = "cyan" } },
				{ '<leader>b$', ':lua require("bufferline").go_to(-1)<CR>', desc = "Go to last buffer" , icon = { icon = "󱁒", color = "cyan" } },
				{ "<leader>bc", ":bd<CR>", desc = "Close" , icon = { icon = "󰅙", color = "cyan" } },
				{ "<leader><leader>", ":w<CR>", group = "Save", icon = { icon = "", color = "cyan" } },
				{ "<leader>t", group = "terminal", icon = { icon = "", color = "cyan" } },
				{ "<leader>tf", ":ToggleTerm direction=float<cr>", desc = 'Toggle float' },
				{ "<leader>tv", ":ToggleTerm size=80 direction=vertical<cr>", desc = 'Toggle vertical' },
				{ "<leader>th", ":ToggleTerm size=10 direction=horizontal<cr>", desc = 'Toggle horizontal' },
				{ "<leader>cj", ":lua require('treesj').toggle()<CR>", desc = "Toggle block" },
				{ "<leader>u", group = "Util", icon = { icon = "", color = "cyan" } },
				{ "<leader>um", group = "Move", icon = { icon = "", color = "cyan" } }
			},
		},
		win = {

		}
	},
	keys = {
		{
			"<leader>bf",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Functions",
		},
		{
			"<c-w><space>",
			function()
				require("which-key").show({ keys = "<c-w>", loop = true })
			end,
			desc = "Window Hydra Mode (which-key)",
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)

		vim.cmd("highlight WhichKeyFloat guibg=#ff0000")

		if not vim.tbl_isempty(opts.defaults) then
			wk.register(opts.defaults)
		end
	end,
}
