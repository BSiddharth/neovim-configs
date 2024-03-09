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
require("lazy").setup(
-- plugins
	{
		-- colorscheme
		{
			"catppuccin/nvim",
			name = "catppuccin",
			priority = 1000,
			config = function()
				vim.cmd.colorscheme("catppuccin")
			end,
		},

		-- provides a way to interact with treesitter core inbuilt in neovim
		{
			"nvim-treesitter/nvim-treesitter",
			config = function()
				require("config.nvim_treesitter_configs")
			end,
			build = ":TSUpdate",
		},

		-- this plugin enables us to use textobjects module in the nvim-treesitter plugin
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			dependencies = { "nvim-treesitter/nvim-treesitter" },
		},

		-- Lsp configs for the inbuilt lsp client of neovim
		{
			"neovim/nvim-lspconfig",
			dependencies = { "williamboman/mason-lspconfig.nvim" },
			config = function()
				require("config.nvim_lspconfig_config")
			end,
		},

		-- package manager for LSP servers, DAP servers, linters and formatters
		{
			"williamboman/mason.nvim",
			config = function()
				require("config.mason_config")
			end,
		},

		-- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
		{
			"williamboman/mason-lspconfig.nvim",
			dependencies = { "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp" },
			config = function()
				require("config.mason_lspconfig_config")
			end,
		},

		-- handles formatting
		{
			"stevearc/conform.nvim",
			event = { "BufWritePre" },
			cmd = { "ConformInfo" },
			config = function()
				require("config.conform_config")
			end,
		},

		-- completion engine
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
			dependencies = {
				"neovim/nvim-lspconfig",
				"hrsh7th/cmp-nvim-lua", -- nvim-cmp source for nvim lua
				"hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
				"hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words
				"hrsh7th/cmp-path", -- nvim-cmp source for path
				"hrsh7th/cmp-cmdline", -- nvim-cmp source for vim's cmdline
				"L3MON4D3/LuaSnip", -- snippet engine
				"saadparwaiz1/cmp_luasnip", -- luasnip completion source for nvim-cmp
				"rafamadriz/friendly-snippets", -- useful snippets library
				"onsails/lspkind.nvim", -- vs-code like pictograms
				"windwp/nvim-autopairs", -- to complete paranthesis
				"octaltree/cmp-look", -- source for english words
			},
			config = function()
				require("config.nvim_cmp_config")
			end,
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
			config = function()
				require("config.telescope")
			end,
		},

		-- displays a popup with possible key bindings
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			init = function()
				vim.o.timeout = true
				vim.o.timeoutlen = 500
			end,
			opts = {},
		},

		-- autopairs for quotes, paranthesis etc
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},

		-- Tree file explorer
		{
			"nvim-tree/nvim-tree.lua",
			config = function()
				require("config.nvim_tree_config")
			end,
		},

		{
			"nvimdev/dashboard-nvim",
			event = "VimEnter",
			config = function()
				require("config.dashboard_nvim_config")
			end,
			dependencies = { "nvim-tree/nvim-web-devicons", },
		},

		-- if some code requires a module from an unloaded plugin, it will be automatically loaded.
		-- So for api plugins like devicons, we can always set lazy=true
		{ "nvim-tree/nvim-web-devicons", lazy = true },

		{
			"numToStr/Comment.nvim",
			config = true,
		},

		-- info line at the bottom
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' },
			config = function()
				require("config.lualine_nvim_config")
			end
		},

		-- info line at the top telling about buffers and tabs
		{
			"akinsho/bufferline.nvim",
			version = "*",
			dependencies = "nvim-tree/nvim-web-devicons",
			config = function()
				require("config.bufferline_config")
			end
		},

		{
			'fedepujol/move.nvim',
			config = function()
				require("config.move_config")
			end,
		},

		-- better folding
		{
			'kevinhwang91/nvim-ufo',
			dependencies = { "kevinhwang91/promise-async", 'neovim/nvim-lspconfig', },
			config = function()
				require("config.nvim_ufo_config")
			end
		},

		-- get fancy comments like  TODO: Do what now?
		{
			"folke/todo-comments.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
			config = true,
		},

		-- helps in managing linters
		{
			"mfussenegger/nvim-lint",
			config = function()
				require("config.nvim_lint_config")
			end
		},

		-- glue plugin that downloads linter mentioned in nvim-lint using mason
		{
			"rshkarin/mason-nvim-lint",
			dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-lint", },
			config = true,
		},

		-- terminal that can toggle
		{
			'akinsho/toggleterm.nvim',
			version = "*",
			config = function()
				require("config.toggleterm_config")
			end
		},

		-- manages whole rust setup
		{
			'mrcjkb/rustaceanvim',
			version = '^4', -- Recommended
			ft = { 'rust' },
		},

		-- notification manager
		{
			"rcarriga/nvim-notify",
			config = function()
				vim.notify = require("notify")
			end
		},

		-- integrate git signs in the buffer
		{
			"lewis6991/gitsigns.nvim",
			config = function()
				require('gitsigns').setup()
			end
		}
	},

	-- opts
	{
		install = {
			colorscheme = {
				"catppuccin",
				"habamax", -- fallback , builtin
			},
		},
	}
)
