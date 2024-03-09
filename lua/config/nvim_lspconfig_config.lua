-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- e for errors
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Open errors/diagnostics dialog" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev error/diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next error/diagnostic" })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
		vim.keymap.set("n", "H", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Hover" })
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Go to implementation" })
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Type definition" })
		vim.keymap.set("n", "<space>ra", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action" })
		vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "Go to references" })
	end,
})
