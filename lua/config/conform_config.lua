return {
	formatters_by_ft = {
		lua = { "stylua" },

		-- ruff supports python formatting through LSP so it is not needed here
		-- python = { "ruff_format" },
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
