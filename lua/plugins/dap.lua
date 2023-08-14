return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<leader>db",
				function() require("dap").toggle_breakpoint() end,
				desc = "Toggle breakpoint",
			},
			{
				"<leader>dc",
				function() require("dap").continue() end,
				desc = "Continue",
			},
			{
				"<leader>do",
				function() require("dap").step_over() end,
				desc = "Step over",
			},
			{
				"<leader>di",
				function() require("dap").continue() end,
				desc = "Step into",
			},
			{
				"<leader>dO",
				function() require("dap").step_out() end,
				desc = "Step out",
			},
		},
		dependencies = {
			{
				"rcarriga/nvim-dap-ui",
				keys = {
					{
						"<leader>du",
						function() require("dapui").toggle() end,
						desc = "Toggle debug UI",
					},
				},
				opts = {},
				config = function(_, opts)
					local dap = require("dap")
					local dapui = require("dapui")
					dapui.setup(opts)
					dap.listeners.after.event_initialized["dapui_config"] = function()
						dapui.open()
					end
					dap.listeners.before.event_terminated["dapui_config"] = function()
						dapui.close()
					end
					dap.listeners.before.event_exited["dapui_config"] = function()
						dapui.close()
					end
				end,
			},
		},
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		opts = {},
	},
	{
		"mxsdev/nvim-dap-vscode-js",
		config = function(_, _)
			require("dap-vscode-js").setup({
				debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
				adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
			})

			for _, language in ipairs ({ "typescript", "javascript" }) do
				require("dap").configurations[language] = {
					{
						type = "pwa-node",
						request = "launch",
						name = "Launch file",
						program = "${file}",
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-node",
						request = "attach",
						name = "Attach",
						processId = require'dap.utils'.pick_process,
						cwd = "${workspaceFolder}",
					}
				}
			end
		end,
	},
	{
		"microsoft/vscode-js-debug",
		lazy = true,
		build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	},
}
