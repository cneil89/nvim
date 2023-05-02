vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- split screen and navigation
-- keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true })
keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true })

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
keymap.set("n", "<C-;>", function() ui.nav_file(4) end)

-- Telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>pf", builtin.find_files, {})
keymap.set("n", "<C-p>", builtin.git_files, {})
keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
keymap.set("n", "<leader>vh", builtin.help_tags, {})
