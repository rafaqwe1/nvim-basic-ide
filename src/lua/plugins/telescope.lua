return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                defaults = {
                    mappings = {
                        i = {
                            ["<C-k>"] = actions.move_selection_previous, -- move up
                            ["<C-j>"] = actions.move_selection_next, -- move down
                        },
                    },
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

            require("telescope").load_extension("ui-select")
        end,
    },
}
