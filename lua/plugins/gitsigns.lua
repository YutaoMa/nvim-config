return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function()
			local gs = package.loaded.gitsigns

			vim.keymap.set("n", "<leader>gh", gs.preview_hunk, { desc = "Preview Git hunk" })
			vim.keymap.set("n", "<leader>gb", gs.blame_line, { desc = "Blame line" })
			vim.keymap.set("n", "]h", gs.next_hunk, { desc = "Next Git hunk" })
			vim.keymap.set("n", "[h", gs.prev_hunk, { desc = "Prev Git hunk" })
		end,
	},
}
