local opts = {
	-- only lsp server go here, formatter are handled by conform and linter not needed for now but use nvim-linter when required
	-- this plugin uses the lspconfig server names in the APIs it exposes - not mason.nvim package names
	ensure_installed = { "lua_ls", "pyright", "clangd", "tsserver", "html", "cssls" },
}

require("mason-lspconfig").setup(opts)
require("mason-lspconfig").setup_handlers({

	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		-- completion capabilities
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- folding capabilities by ufo
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, :
	["lua_ls"] = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }, -- override for the `lua_ls` so that it recognizes `vim` as a global table provided by neovim
					},
				},
			},
		})
	end,

	["pyright"] = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

		require("lspconfig").pyright.setup({
			capabilities = capabilities,
			settings = {
				python = {
					analysis = {
						useLibraryCodeForTypes = true,
						diagnosticSeverityOverrides = {
							reportGeneralTypeIssues = "none",
							reportUndefinedVariable = "none",
							reportUnusedExpression = "none",
							reportOptionalMemberAccess = "none",
							reportReturnType = "none",
						},
						typeCheckingMode = "basic",
					},
				},
			},
		})
	end,
})
