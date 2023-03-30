return {
	"lukas-reineke/indent-blankline.nvim",
	opts = {
		show_current_context = true,
		show_trailing_blankline_indent = false,
	},
	config = function(_, opts)
		vim.g.indent_blankline_use_treesitter = true
		require("indent_blankline").setup(opts)
	end,
}
