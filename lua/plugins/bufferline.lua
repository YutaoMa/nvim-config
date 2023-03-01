return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{
			"]b",
			"<Cmd>BufferLineCycleNext<cr>",
			desc = "Next buffer",
		},
		{
			"[b",
			"<Cmd>BufferLineCyclePrev<cr>",
			desc = "Prev buffer",
		},
	},
	opts = {
		options = {
			offsets = {
				{
					filetype = "neo-tree",
					text = "Neo-tree",
					highlight = "Directory",
					text_align = "left",
				},
			},
		},
	},
}
