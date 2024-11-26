return {
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enabled = false },
		servers = {
			gopls = {
				settings = {
					gopls = {
            gofumpt = true,
						env = { GOFLAGS = "-tags=unit,integration" },
						analyses = { fieldalignment = false, unusedparams = true },
					},
				},
			},
		},
	},
}
