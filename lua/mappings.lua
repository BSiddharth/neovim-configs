--[[

set non plugin specific mappings here
    __  __    __    ____  ____  ____  _  _  ___  ___    __    __  __    __
  (  \/  )  /__\  (  _ \(  _ \(_  _)( \( )/ __)/ __)  (  )  (  )(  )  /__\
  )    (  /(__)\  )___/ )___/ _)(_  )  (( (_-.\__ \   )(__  )(__)(  /(__)\
(_/\/\_)(__)(__)(__)  (__)  (____)(_)\_)\___/(___/()(____)(______)(__)(__)

]]

-- to make window traversal a little easy
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- to make buffer traversal a little easy
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { desc = "Prev buffer" })

vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<leader>w", ":set wrap!<CR>", { desc = "Toggle line wrap" })

vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

-- line number
vim.keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>", { desc = "Toggle relative number" })
vim.keymap.set("n", "<leader>n", "<cmd> set nu! <CR>", { desc = "Toggle line number" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights" })

vim.keymap.set("n", "<C-F5>", function()
	local current_file_path = vim.api.nvim_buf_get_name(0)
	local term_command = nil
	if vim.bo.filetype == "python" then
		vim.cmd.vsplit()
		vim.cmd.terminal()
		term_command = "python " .. current_file_path .. "\r"
	elseif vim.bo.filetype == "c" then
		local file_name = string.match(current_file_path, "\\([^\\]+)%.c$")
		vim.cmd.vsplit()
		vim.cmd.terminal()
		term_command = "gcc -o " .. file_name .. " " .. '"' .. current_file_path .. '"' .. "&& " .. file_name .. "\r"
	end
	if term_command ~= nil then
		-- send the command to the terminal buffer
		vim.api.nvim_chan_send(vim.bo.channel, term_command)

		-- enter insert mode
		vim.api.nvim_feedkeys("a", "t", false)
	end
end, { desc = "Run current file" })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

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
