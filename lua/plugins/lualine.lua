return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
	    {"nvim-tree/nvim-web-devicons", commit = DepsCommits.devicons }
	},
	commit = 'b8c23159c0161f4b89196f74ee3a6d02cdc3a955',
	opts = {
		options = {
			theme = "dracula-nvim",
		},
		sections = {
			lualine_a = { "mode", "branch" },
			lualine_b = {},
			lualine_c = {},
			lualine_x = { "lsp_status", "filesize" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	}
}
