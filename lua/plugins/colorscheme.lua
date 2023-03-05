return {
	"catppuccin/nvim",
	name = "catppuccin",
	opts = {
		transparent_background = true,
		show_end_of_buffer = true,
		custom_highlights = function(colors)
			return {
				VertSplit = { fg = colors.lavender },
				BufferLineOffsetSeparator = { fg = colors.lavender },
				TroubleNormal = { bg = "NONE" },
			}
		end,
		integrations = {
			cmp = true,
			telescope = true,
			which_key = true,
			neotree = true,
			gitsigns = true,
			fidget = true,
			indent_blankline = {
				enabled = true,
			},
			native_lsp = {
				enabled = true,
			},
			lsp_trouble = true,
		},
	},
}
