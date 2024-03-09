vim.notify = require("notify")
vim.keymap.set("n", "<leader>cl", ":lua require('notify').dismiss() <CR>",
	{ desc = "Clear all notification" })
