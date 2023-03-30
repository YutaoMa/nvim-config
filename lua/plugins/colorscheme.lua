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
				NvimTreeWinSeparator = { fg = colors.lavender },
				TroubleNormal = { bg = "NONE" },
			}
		end,
		integrations = {
			cmp = true,
			telescope = true,
			which_key = true,
			nvimtree = true,
			gitsigns = true,
			fidget = true,
			leap = true,
			indent_blankline = {
				enabled = true,
			},
			native_lsp = {
				enabled = true,
			},
			lsp_trouble = true,
			aerial = true,
			noice = true,
			treesitter = true,
			mini = true,
		},
	},
}
