return {
	"NLKNguyen/papercolor-theme",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("PaperColor")
	end,
}
