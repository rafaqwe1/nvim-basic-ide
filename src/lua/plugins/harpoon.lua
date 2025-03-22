return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.api.nvim_set_keymap('n', '<leader>h', ':lua require("harpoon.mark").add_file()<CR>',
                { noremap = true, silent = true })                                                                             -- Adiciona arquivo à lista
            vim.api.nvim_set_keymap('n', '<C-h>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>',
                { noremap = true, silent = true })                                                                             -- Abre o menu de buffers
        end
    }
}
