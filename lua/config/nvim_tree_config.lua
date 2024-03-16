require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},
	git = {
		ignore = false,
	},
	update_focused_file = { enable = true }
})
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })
