return {
	"voldikss/vim-floaterm",
	keys = {
		{
			"<C-`>",
			"<Cmd>FloatermToggle<cr>",
			mode = { "n", "t" },
			desc = "Toggle Floaterm",
		},
	},
	config = function()
		vim.g.floaterm_width = 0.8
		vim.g.floaterm_height = 0.9
	end,
}
