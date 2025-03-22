return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        setup = {},
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
            })
            vim.cmd.colorscheme("catppuccin")
        end
    }
}
