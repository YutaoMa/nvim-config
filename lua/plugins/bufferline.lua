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
	opts = function()
		return {
			options = {
				offsets = {
					{
						filetype = "NvimTree",
						text = "Nvim-Tree",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					},
				},
				indicator = {
					style = "none",
				},
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get()
		}
	end,
}
