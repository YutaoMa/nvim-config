return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsp_attach = function(_, bufnr)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover" })
			end

			local lsp_config = require("lspconfig")
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					lsp_config[server_name].setup({
						on_attach = lsp_attach,
						capabilities = lsp_capabilities,
					})
				end,
			})
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"hrsh7th/nvim-cmp",
		opts = {},
	},
}
