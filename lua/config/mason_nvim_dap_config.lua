require("mason-nvim-dap").setup({
	-- this plugin uses the dap adapter names in the APIs it exposes - not mason.nvim package names
	ensure_installed = { "python", }
})
