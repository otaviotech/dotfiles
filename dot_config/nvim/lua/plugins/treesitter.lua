return {
	"nvim-treesitter/nvim-treesitter",
	ensure_installed = { "templ", "html" },
	build = function(_)
		vim.cmd("TSUpdate")
	end,
}
