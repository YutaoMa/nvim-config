return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = {
        {
            "nvim-lua/plenary.nvim"
        },
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function()
                require("telescope").load_extension("fzf")
            end,
        }
    },
    opts = function()
        local trouble = require("trouble.providers.telescope")
        return {
            defaults = {
                mappings = {
                    i = { ["<c-t>"] = trouble.open_with_trouble },
                    n = { ["<c-t>"] = trouble.open_with_trouble },
                },
                layout_config = {
                    horizontal = {
                        preview_width = 0.66,
                    },
                },
            },
        }
    end,
}
