require("nvim-treesitter.configs").setup({
	-- I think this is not neccessary since auto_install is set
	-- kinda confusing if they want us to make sure that these 5 should always be installed
	-- keeping this as it does not really matter plus looks like vimdoc causes warning in healthcheck if not installed
	ensure_installed = { "vim", "c", "lua", "vimdoc", "query" },

	-- auto download required parsers depending on the file type
	auto_install = true,

	-- colors the code intelligently
	highlight = {
		enable = true,
	},

	-- let me do fancy selection
	textobjects = {
		select = {
			enable = true,

			lookahead = true,

			keymaps = {
				["af"] = { query = "@function.outer", desc = "Select inner part of a function region" },
				["if"] = { query = "@function.inner", desc = "Select inner part of a function region" },
				["ac"] = { query = "@class.outer", desc = "Select inner part of a class region" },
				["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
			},

			selection_modes = {
				["@parameter.outer"] = "v", -- charwise
				["@function.outer"] = "V", -- linewise
				["@class.outer"] = "<c-v>", -- blockwise
			},

			include_surrounding_whitespace = true,
		},
	},
})
