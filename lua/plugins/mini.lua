return {
	'echasnovski/mini.nvim',
	version = '*',
	config = function()
		require('mini.surround').setup()
		require('mini.starter').setup()
		require('mini.sessions').setup()
		require('mini.animate').setup()
		require('mini.icons').setup()
	end,
	
}
