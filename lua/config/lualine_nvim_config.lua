-- LSP clients attached to buffer
local clients_lsp = function()
	local bufnr = vim.api.nvim_get_current_buf()

	local clients = vim.lsp.buf_get_clients(bufnr)
	if next(clients) == nil then
		return ""
	end

	local c = {}
	for _, client in pairs(clients) do
		table.insert(c, client.name)
	end
	return "\u{f085} " .. table.concat(c, "|")
end

return {
	options = {
		disabled_filetypes = { "dashboard" }, -- to hide lualine when `:q[uit]` form config
	},
	sections = {
		lualine_x = { "encoding", clients_lsp, "filetype" },
	},
}
