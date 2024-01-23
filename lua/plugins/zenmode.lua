return {
    "folke/zen-mode.nvim",
    lazy = true,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {"<leader>zz", "<cmd>ZenMode<cr>", mode = "n", desc = "Toggle ZenMode"}
    }
}
