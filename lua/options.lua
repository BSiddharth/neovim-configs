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
	vim.api.nvim_set_keymap(
		"n",
		"<F11>",
		":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>",
		{ desc = "Toggle full screen" }
	)
	vim.g.neovide_hide_mouse_when_typing = true
end

-- disable netrw at the very start of your init.lua as required by nvim-tree
-- could have put this in init func of nvim-tree but cannot remember if other plugins need this too so putting at start here
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set space as mapleader
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Where to spawn new splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Line wrapping
vim.opt.wrap = false

-- Use spaces to express tabs
vim.opt.expandtab = true

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
-- FIX: Not working for some reason
vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

-- Sets how neovim will display certain whitespace in the editor
vim.opt.list = true
-- double space is used with tab as it requires minimum two chars. See `:h listchars` for more info
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

vim.opt.cursorline = true

-- Save undo history
vim.opt.undofile = true

-- Custom expressions are used to create folds
vim.opt.foldmethod = "expr"
-- Lsp is asked to provide these expressions, afaiu lsp will tell how to fold a given text thats all
vim.opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
-- Folds take no space in the left column
vim.opt.foldcolumn = "0"
-- By setting foldtext to an empty string, it means that the first line of the fold will be syntax highlighted so I know what is commented
vim.opt.foldtext = ""
-- Keeps fold till 99 level open (HACK: Keep all folds open by default)
vim.opt.foldlevel = 99

-- diagnostics setting
vim.diagnostic.config({
	virtual_lines = {
		format = function(diagnostic)
			if diagnostic.source then
				return string.format("%s [%s]", diagnostic.message, diagnostic.source)
			end
			return diagnostic.message
		end,
	},
})
