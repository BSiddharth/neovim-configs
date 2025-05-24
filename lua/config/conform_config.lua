return {
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format" },
	},

	-- Set default options
	default_format_opts = {
		lsp_format = "fallback",
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
	},
}
