return {
    "Civitasv/cmake-tools.nvim",
    config = function()
        require("cmake-tools").setup({
            cmake_build_directory = "build/${variant:buildType}",
        })
        vim.keymap.set("n", "<C-b>", "<CMD>CMakeBuild<CR>", {})
    end,
}
