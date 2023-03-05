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
		"folke/neodev.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("neodev").setup({})

			local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
			lsp_capabilities.textDocument.foldingRange = {
				dynamicRegistration = true,
				lineFoldingOnly = true,
			}

			local lsp_attach = function(_, bufnr)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover" })
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Goto definition" })
				vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Goto references" })
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
		opts = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			return {
				completion = {
					completeopt = "menu,menuone,noinsert",
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}),
				mapping = cmp.mapping.preset.insert({
					["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					["<C-Space>"] = cmp.mapping(function()
						if cmp.visible() then
							cmp.abort()
						else
							cmp.complete({})
						end
					end),
					["<Tab>"] = cmp.mapping(function()
						if luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							cmp.confirm()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function()
						if luasnip.jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { "i", "s" }),
				}),
			}
		end,
	},
	{
		"saadparwaiz1/cmp_luasnip",
	},
}
