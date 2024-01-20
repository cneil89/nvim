return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "gopls",
                "clangd",
                "cmake",
            },
            handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup({})
                end
            }
        })
    end
}
