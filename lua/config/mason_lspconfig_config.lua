return {
	-- only lsp server go here, formatter are handled by conform and linter by nvim-linter
	-- this plugin uses the lspconfig server names in the APIs it exposes - not mason.nvim package names
	ensure_installed = { "lua_ls", "pyright", "clangd", "html", "cssls" },
}
