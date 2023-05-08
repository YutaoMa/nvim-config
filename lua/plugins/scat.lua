return {
	"https://git.amazon.com/pkg/Scat-nvim",
	branch = "mainline",
	config = function (_, opts)
		require("scat").setup(opts)

		local brazil = require("scat.brazil")

		vim.keymap.set({"n", "v"}, "<leader>af", brazil.display_current_file_url, { desc = "Display file URL" })
		vim.keymap.set("n", "<leader>ab", brazil.build_current_package, { desc = "Build package" })
		vim.keymap.set("n", "<leader>arb", brazil.build_current_package_recursively, { desc = "Build package recursively" })
	end,
}
