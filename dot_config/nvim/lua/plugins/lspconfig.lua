return {
	"neovim/nvim-lspconfig",
	opts = {
		inlay_hints = { enabled = false },
		servers = {
			gopls = {
				settings = {
					gopls = {
						env = { GOFLAGS = "-tags=unit,integration" },
					},
				},
			},
		},
	},
}
