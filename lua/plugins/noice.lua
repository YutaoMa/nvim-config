return {
	"folke/noice.nvim",
	dependencies = {
		{
			"MunifTanjim/nui.nvim",
		},
	},
	opts = {
		cmdline = {
			format = {
				search_down = {
					icon = "",
				},
				search_up = {
					icon = "",
				},
			},
		},
		views = {
			mini = {
				win_options = {
					winblend = 0,
				},
			},
		},
	},
}
