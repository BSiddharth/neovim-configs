return {
	-- only lsp server go here, formatter are handled by conform and linter by nvim-linter
	-- this plugin uses the lspconfig server names in the APIs it exposes - not mason.nvim package names

	-- ruff supports python formatting through LSP so it is here and not in conform
	ensure_installed = { "lua_ls", "clangd", "html", "cssls", "rust_analyzer", "ruff", "pyright" },
}
