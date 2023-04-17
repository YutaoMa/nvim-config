return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		opts = function()
			local lsp_client_names = function ()
				local clients = vim.lsp.get_active_clients()
				local client_names = {}
				for _, client in pairs(clients) do
					table.insert(client_names, client.name)
				end
				local client_names_str = table.concat(client_names, ", ")
				return client_names_str
			end

			return {
				options = {
					globalstatus = true,
				},
				sections = {
					lualine_x = {
						lsp_client_names,
						"filetype",
					},
				},
			}
		end,
	},
}
