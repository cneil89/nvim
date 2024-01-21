return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {

    },
    config = function()
        require("toggleterm").setup({
            vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", {}),
            vim.keymap.set("t", "<C-t>", [[<C-\><C-n>:ToggleTerm<CR>]], {}),
            vim.keymap.set("t", "jj", [[<C-\><C-n>]], {}),
            vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], {}),
            vim.keymap.set("t", "<leader>h", [[<Cmd>wincmd h<CR>]], {}),
            vim.keymap.set("t", "<leader>j", [[<Cmd>wincmd j<CR>]], {}),
            vim.keymap.set("t", "<leader>k", [[<Cmd>wincmd k<CR>]], {}),
            vim.keymap.set("t", "<leader>l", [[<Cmd>wincmd l<CR>]], {}),
            vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], {}),
        })
    end,
}
