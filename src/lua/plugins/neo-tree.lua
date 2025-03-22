return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = false,
            })
            vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
            vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal<CR>", {})
            vim.keymap.set("n", "<C-m>", ":Neotree close<CR>", {})
        end
    }
}
