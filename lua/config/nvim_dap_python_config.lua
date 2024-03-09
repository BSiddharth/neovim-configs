require('dap-python').setup(vim.fn.stdpath('data') .. '/mason/packages/debugpy/venv/Scripts/python')
vim.keymap.set("n", "<leader>rpd", function() require('dap-python').test_method() end,
	{ desc = "Run python debug" })
