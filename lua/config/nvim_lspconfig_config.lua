vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = {
					-- override for the `lua_ls` so that it recognizes 'vim' and 'require' as a global table provided by neovim
					"vim",
					"require",
				},
			},
		},
	},
})
