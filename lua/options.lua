--[[

Set all non-plugin specific options for neovim here


 ░▒▓██████▓▒░░▒▓███████▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓██████▓▒░░▒▓███████▓▒░ ░▒▓███████▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░       ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        ░▒▓█▓▒░   ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        ░▒▓█▓▒░   ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░▒▓██▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░
 ░▒▓██████▓▒░░▒▓█▓▒░        ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓██▓▒░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░


--]]

-- neovide specific options
if vim.g.neovide == true then
	vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12"
	vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>",
		{ desc = "Go full screen" })
	vim.g.neovide_hide_mouse_when_typing = true
end

-- disable netrw at the very start of your init.lua as required by nvim-tree
-- could have put this in init func of nvim-tree but cannot remember if other plugins need this too so putting at start here
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Where to spawn new splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Line wrapping
vim.opt.wrap = false

-- Number of spaces in a tab
vim.opt.tabstop = 4

-- Number of spaces in an indent/dedent (is that a word?)
vim.opt.shiftwidth = 4

-- Scrolloff means num of lines to keep above and below the cursor (n/a at the start/end of the file). Setting it to large number like 999 makes sure that cursor stays at middle while scrolling
vim.opt.scrolloff = 999

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Virtual editing means that the cursor can be positioned where there is no actual character. It is set to be enabled only in block mode
vim.opt.virtualedit = "block"

-- So that I can also see the changes of substitute in a split window all clubbed together
vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.g.mapleader = " "

-- Sets how neovim will display certain whitespace in the editor
vim.opt.list = true
-- double space is used with tab as it requires minimum two chars. See `:h listchars` for more info
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

vim.opt.cursorline = true

-- Save undo history
vim.opt.undofile = true
