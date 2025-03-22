return {
    -- Mason: Manages external tools like LSP servers, formatters, and linters
    {
        "williamboman/mason.nvim",
        config = true, -- Use default configuration
    },

    -- Mason-LSPConfig: Ensures LSP servers are installed
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "intelephense", "lua_ls" }, -- Automatically install these LSPs
            })
        end
    },

    -- LSPConfig: Configures language servers
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            -- PHP LSP (Intelephense)
            lspconfig.intelephense.setup({})

            -- Lua LSP
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },                      -- Use LuaJIT (Neovim's runtime)
                        diagnostics = { globals = { "vim" } },                 -- Recognize `vim` as a global variable
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true), -- Include Neovim runtime files
                            checkThirdParty = false,                           -- Avoid warnings about third-party libraries
                        },
                        telemetry = { enable = false },
                    },
                },
            })

            vim.api.nvim_set_keymap("n", "<Leader>ff", "<cmd>lua vim.lsp.buf.format({ async = false })<CR>",
                { noremap = true, silent = true })

            vim.api.nvim_set_keymap("n", "<C-i>", "<cmd>lua vim.lsp.buf.definition()<CR>",
                { noremap = true, silent = true })

            vim.api.nvim_set_keymap('n', '<leader>r', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

            vim.api.nvim_set_keymap('n', '<leader>fr', ':lua require("telescope.builtin").lsp_references()<CR>',
                { noremap = true, silent = true })

            vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
        end
    }
}
