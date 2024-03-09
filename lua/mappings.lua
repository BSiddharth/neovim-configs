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

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear highlights" })

-- <F29> == <C-F5>
vim.keymap.set('n', '<C-F5>', function() -- in windows
	-- vim.keymap.set('n', '<F29>', function() -- in linux or just try writing ctrl+<F5> again
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
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
