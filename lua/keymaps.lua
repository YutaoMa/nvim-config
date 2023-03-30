local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" })
keymap.set("n", "<F1>", builtin.builtin, { desc = "Telescope Built-in Pickers" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })

keymap.set("x", "<leader>p", "\"_dP", { desc = "Blackhole selected text and paste" })
keymap.set({"n", "v"}, "<leader>d", "\"_d", { desc = "Blackhole when deleting" })
keymap.set({"n", "v"}, "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy line to system clipboard" })

keymap.set("n", "<leader>gg", function() require("lazy.util").float_term("lazygit", {}) end, { desc = "Lazygit" })

keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal-mode" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostics" })
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostics" })

keymap.set("n", "<leader>w", "<Cmd>set wrap!<cr>", { desc = "Toggle wrap" })
keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
