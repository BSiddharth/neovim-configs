require("peek").setup()
vim.api.nvim_create_user_command("MdOpen", require("peek").open, {})
vim.api.nvim_create_user_command("MdClose", require("peek").close, {})
