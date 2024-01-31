return {
    "NLKNguyen/papercolor-theme",
    lazy = false,
    priority = 1000,
    init = function()
        vim.g.PaperColor_Theme_Options = {
            theme = {
                ["default.dark"] = {
                    override = {
                        error_bg = { "#1c1c1c", "234" },
                    },
                },
            },
        }
    end,
    config = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme("PaperColor")
    end,
}
