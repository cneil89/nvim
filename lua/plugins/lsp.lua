return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "gopls",
                "clangd",
                "cmake",
            },
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({})
                end,
            },
        })

        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
    end,
}
