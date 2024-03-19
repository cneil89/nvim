local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.filetype.add({
    extention = {
        templ = "templ",
    },
})

local NilocGroup = vim.api.nvim_create_augroup("NilocGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = "*",
    group = NilocGroup,
    callback = function()
        vim.lsp.buf.format()
    end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    pattern = "*",
    group = NilocGroup,
    callback = function()
        vim.highlight.on_yank()
    end,
})
