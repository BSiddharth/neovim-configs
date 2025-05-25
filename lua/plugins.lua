--[[
set up lazy.nvim and the plugins

.-------.   .---.      ___    _   .-_'''-.  .-./`) ,---.   .--.   .-'''-.       .---.      ___    _    ____
\  _(`)_ \  | ,_|    .'   |  | | '_( )_   \ \ .-.')|    \  |  |  / _     \      | ,_|    .'   |  | | .'  __ `.
| (_ o._)|,-./  )    |   .'  | ||(_ o _)|  '/ `-' \|  ,  \ |  | (`' )/`--'    ,-./  )    |   .'  | |/   '  \  \
|  (_,_) /\  '_ '`)  .'  '_  | |. (_,_)/___| `-'`"`|  |\_ \|  |(_ o _).       \  '_ '`)  .'  '_  | ||___|  /  |
|   '-.-'  > (_)  )  '   ( \.-.||  |  .-----..---. |  _( )_\  | (_,_). '.      > (_)  )  '   ( \.-.|   _.-`   |
|   |     (  .  .-'  ' (`. _` /|'  \  '-   .'|   | | (_ o _)  |.---.  \  : _ _(  .  .-'  ' (`. _` /|.'   _    |
|   |      `-'`-'|___| (_ (_) _) \  `-'`   | |   | |  (_,_)\  |\    `-'  |( ` )`-'`-'|___| (_ (_) _)|  _( )_  |
/   )       |        \\ /  . \ /  \        / |   | |  |    |  | \       /(_{;}_)|        \\ /  . \ /\ (_ o _) /
`---'       `--------` ``-'`-''    `'-...-'  '---' '--'    '--'  `-...-'  (_,_) `--------` ``-'`-''  '.(_,_).'

--]]

-- download lazy if not downloaded
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

-- put lazy in runtimepath
vim.opt.rtp:prepend(lazypath)

-- install and setup plugins
require("lazy").setup({
	-- plugins
	spec = {
		-- colorscheme
		{
			"catppuccin/nvim",
			lazy = false,
			name = "catppuccin",
			priority = 1000,
			config = function()
				vim.cmd.colorscheme("catppuccin")
			end,
		},

		-- provides a way to interact with treesitter core inbuilt in neovim
		{
			"nvim-treesitter/nvim-treesitter",
			branch = "master",
			lazy = false,
			opts = require("config.nvim_treesitter_configs"),
			build = ":TSUpdate",
		},

		-- this plugin enables us to use textobjects module in the nvim-treesitter plugin
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			lazy = false,
			dependencies = { "nvim-treesitter/nvim-treesitter" },
		},

		-- Lsp configs for the inbuilt lsp client of neovim
		{
			"neovim/nvim-lspconfig",
			event = { "BufReadPost", "BufWritePost", "BufNewFile" },
			config = function()
				require("config.nvim_lspconfig_config")
			end,
		},

		-- package manager for LSP servers, DAP servers, linters and formatters
		{
			"mason-org/mason.nvim",
			opts = require("config.mason_config"),
		},

		-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
		{
			"mason-org/mason-lspconfig.nvim",
			dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
			opts = require("config.mason_lspconfig_config"),
		},

		-- handles formatting. On why are we not using LSP to format : https://github.com/stevearc/conform.nvim/tree/master?tab=readme-ov-file#features
		{
			"stevearc/conform.nvim",
			event = { "BufWritePre" },
			cmd = { "ConformInfo" },
			opts = require("config.conform_config"),
		},

		-- Automatically install formatters registered with conform.nvim via mason
		{
			"zapling/mason-conform.nvim",
			dependencies = { "williamboman/mason.nvim", "stevearc/conform.nvim" },
			config = true,
		},

		{
			"saghen/blink.cmp",
			-- optional: provides snippets for the snippet source
			dependencies = { "rafamadriz/friendly-snippets" },
			-- use a release tag to download pre-built binaries
			version = "1.*",

			opts = require("config.blink_cmp_config"),
			opts_extend = { "sources.default" },
		},

		-- helps in searching through whole neovim
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"BurntSushi/ripgrep",
				"sharkdp/fd",
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					build = "make",
				},
				"nvim-treesitter/nvim-treesitter",
				"nvim-tree/nvim-web-devicons",
			},
			keys = {
				{
					"<leader>ff",
					function()
						require("telescope.builtin").find_files()
					end,
					desc = "Telescope files", -- will respect .gitgnore so keep that in mind
				},

				{
					"<leader>fg",
					function()
						require("telescope.builtin").live_grep()
					end,
					desc = "Live grep",
				},

				{
					"<leader>fb",
					function()
						require("telescope.builtin").buffers()
					end,
					desc = "Telescope buffers",
				},

				{
					"<leader>fh",
					function()
						require("telescope.builtin").help_tags()
					end,
					desc = "Telescope help tags",
				},
				{
					"<leader>fk",
					"<cmd>Telescope keymaps<CR>",
					desc = "Telescope keymaps",
				},
			},
		},

		-- displays a popup with possible key bindings
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {},
		},

		-- Tree file explorer
		{
			"nvim-tree/nvim-tree.lua",
			opts = require("config.nvim_tree_config"),
			keys = {
				{ "<C-n>", "<cmd> NvimTreeToggle <CR>", desc = "Toggle nvimtree" },
			},
		},

		{
			"nvimdev/dashboard-nvim",
			event = "VimEnter",
			opts = require("config.dashboard_nvim_config"),
			dependencies = { "nvim-tree/nvim-web-devicons" },
		},

		-- If some code requires a module from an unloaded plugin, it will be automatically loaded.
		-- So for api plugins like devicons, we can always set lazy=true
		{ "nvim-tree/nvim-web-devicons", lazy = true, opts = {} },

		-- Library of 40+ independent Lua modules improving overall Neovim
		-- Using for Commenting, autopairs
		{
			"echasnovski/mini.nvim",
			version = false,
			config = function()
				require("config.mini_config")
			end,
		},

		-- info line at the bottom
		{
			"nvim-lualine/lualine.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			opts = require("config.lualine_nvim_config"),
		},

		-- info line at the top telling about buffers and tabs
		{
			"akinsho/bufferline.nvim",
			version = "*",
			dependencies = "nvim-tree/nvim-web-devicons",
			opts = require("config.bufferline_config"),
		},

		-- get fancy comments like  TODO: Do what now?
		{
			"folke/todo-comments.nvim",
			lazy = false,
			cmd = { "TodoTrouble", "TodoTelescope" },
			dependencies = { "nvim-lua/plenary.nvim" },
			opts = {},
		},

		-- helps in managing linters
		{
			"mfussenegger/nvim-lint",
			dependencies = { "williamboman/mason.nvim" }, -- required by mason-nvim-lint to be like this
			config = function()
				require("config.nvim_lint_config")
			end,
		},

		-- glue plugin that downloads linter mentioned in nvim-lint using mason
		{
			"rshkarin/mason-nvim-lint",
			events = { "BufEnter" },
			dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-lint" },
			opts = {},
		},

		-- terminal that can toggle
		{
			"akinsho/toggleterm.nvim",
			events = "VeryLazy",
			version = "*",
			opts = require("config.toggleterm_config"),
			keys = {
				{ "<A-f>", ":ToggleTerm direction=float<CR>", desc = "Floating term" },
				{ "<A-v>", ":ToggleTerm direction=vertical<CR>", desc = "Vertical term" },
				{ "<A-h>", ":ToggleTerm direction=horizontal<CR>", desc = "Horizontal term" },
			},
		},

		-- -- manages whole rust setup
		-- {
		-- 	"mrcjkb/rustaceanvim",
		-- 	version = "^6", -- Recommended
		-- 	lazy = false, -- This plugin is already lazy
		-- },

		-- notification manager
		{
			"rcarriga/nvim-notify",
			lazy = false,
			config = function()
				require("config.nvim_notify_config")
			end,

			-- since lazy is set to false, putting this here might not make sense but still just to be consistent
			keys = {
				{ "<leader>dn", ":lua require('notify').dismiss() <CR>", desc = "Dismiss all notifications" },
			},
		},

		-- integrate git signs in the buffer
		{
			"lewis6991/gitsigns.nvim",
		},

		-- Debug Adapter Protocol client implementation for Neovim
		{
			"mfussenegger/nvim-dap",
			keys = {
				{ "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc = "Toggle breakpoints" }, -- https://github.com/mfussenegger/nvim-dap/discussions/355#discussioncomment-2159022
			},
		},

		-- A UI for nvim-dap
		{
			"rcarriga/nvim-dap-ui",
			dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
			config = function()
				require("config.nvim_dap_ui_config")
			end,
		},

		-- bridges mason.nvim with the nvim-dap plugin - making it easier to use both plugins together.
		{
			"jay-babu/mason-nvim-dap.nvim",
			dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
			opts = require("config.mason_nvim_dap_config"),
		},

		-- An extension for nvim-dap, providing default configurations for python and methods to debug individual test methods or classes.
		{
			"mfussenegger/nvim-dap-python",
			ft = "python",
			dependencies = { "mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui" },
			opts = require("config.nvim_dap_python_config"),
			keys = {
				{
					"<leader>rpd",
					function()
						require("dap-python").test_method()
					end,
					desc = "Run python debugger",
				},
			},
		},

		-- Markdown preview plugin
		{
			"toppair/peek.nvim",
			event = { "VeryLazy" },
			build = "deno task --quiet build:fast",
			config = function()
				require("config.peek_config")
			end,
		},
	},

	-- automatically check for plugin updates
	checker = { enabled = true },
})
