return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bl = require('bufferline')
		bl.setup({
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						separator = true
					},
				},
			},
		})
	end
}
