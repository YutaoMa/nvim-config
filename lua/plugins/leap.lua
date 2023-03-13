return {
	"ggandor/leap.nvim",
	keys = {
		{ "s", mode = { "n", "x", "o" }, desc = "Leap forward" },
		{ "S", mode = { "n", "x", "o" }, desc = "Leap backward" },
		{ "gs", mode = { "n", "x", "o" }, desc = "Leap windows" },
	},
	config = function(_, opts)
		require("leap").add_default_mappings()
		vim.keymap.del({ "x", "o" }, "x")
		vim.keymap.del({ "x", "o" }, "X")
	end,
}
