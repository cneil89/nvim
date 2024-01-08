return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<leader>b', '<CMD>Neotree toggle<CR>', {})
        -- vim.keymap.set('n', '<leader>b', ':Neotree filesystem reveal left<CR>', {})
        vim.keymap.set('n', '<leader>B', ':Neotree buffers reveal float<CR>', {})
        require("neo-tree").setup({
            window = {
                width = 30
            }
        })
    end
}
