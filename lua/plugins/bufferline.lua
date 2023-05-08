return {
	{
		'echasnovski/mini.bufremove',
		version = false,
		keys = {
			{
				"<leader>bd",
				function() require("mini.bufremove").delete(0, false) end,
				desc = "Delete buffer",
			},
		},
	},
	{
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
					close_command = function(n)
						require("mini.bufremove").delete(n, false)
					end,
					right_mouse_command = function(n)
						require("mini.bufremove").delete(n, false)
					end,
					numbers = "ordinal"
				},
				highlights = require("catppuccin.groups.integrations.bufferline").get()
			}
		end,
	}
}
