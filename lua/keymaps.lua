local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" })
keymap.set("n", "<F1>", builtin.builtin, { desc = "Telescope Built-in Pickers" })

keymap.set("x", "<leader>p", "\"_dP", { desc = "Blackhole selected text and paste" })
keymap.set("n", "<leader>c", "\"_c", { desc = "Blackhole selected text and change" })
keymap.set("n", "<leader>C", "\"_C", { desc = "Blackhole seletced text and change line" })
keymap.set({"n", "v"}, "<leader>d", "\"_d", { desc = "Blackhole when deleting" })
keymap.set({"n", "v"}, "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy line to system clipboard" })

keymap.set("n", "<leader>g", function() require("lazy.util").float_term("lazygit", {}) end, { desc = "Lazygit" })
