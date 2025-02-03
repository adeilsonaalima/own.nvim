return {
	'Wansmer/treesj',
	requires = {
		'nvim-treesitter/nvim-treesitter',
	},
	keys = function() return {} end,
	config = function()
		local treesj = require('treesj')

		treesj.setup({
			use_default_keympas = false,
			max_join_length = 5000
		})
	end,
}
