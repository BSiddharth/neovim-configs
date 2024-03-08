require("toggleterm").setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = "<A-v>",
	direction = "vertical"
})

vim.keymap.set("n", "<A-f>", ":ToggleTerm direction=float name='Will it work?'<CR>",
	{ desc = "Floating term" })
