require("nvim-tree").setup({
	diagnostics = {
		enable = true,
	},
	update_focused_file = { enable = true }
})
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle nvimtree" })
