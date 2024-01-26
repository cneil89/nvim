return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set("n", "<C-b>", "<CMD>Neotree toggle<CR>", {})
        -- vim.keymap.set('n', '<leader>b', ':Neotree filesystem reveal left<CR>', {})
        vim.keymap.set("n", "<leader>B", ":Neotree buffers reveal float<CR>", {})
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                width = 30,
            },
            event_handlers = {
                {
                    event = "file_opened",
                    handler = function(file_path)
                        require("neo-tree.command").execute({ action = "close" })
                    end,
                },
            },
        })
    end,
}
