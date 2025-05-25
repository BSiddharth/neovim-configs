return {
	keymap = {
		-- 'enter' for enter to accept the completion
		preset = "enter",

		-- to use tab/s-tab to select next/prev completion without breaking movement in snippets
		["<Tab>"] = {
			function(cmp)
				if cmp.snippet_active() then
					return cmp.snippet_forward()
				else
					return cmp.select_next()
				end
			end,
			"fallback",
		},
		["<S-Tab>"] = {
			function(cmp)
				if cmp.snippet_active() then
					return cmp.snippet_backward()
				else
					return cmp.select_prev()
				end
			end,
			"fallback",
		},
	},
	-- Always show the documentation popup without the need of being manually triggered
	completion = { documentation = { auto_show = true } },

	-- Default list of enabled providers defined so that you can extend it
	-- elsewhere in your config, without redefining it, due to `opts_extend`
	sources = {
		default = { "lazydev", "lsp", "path", "snippets", "buffer" },
		-- optional blink completion source for require statements and module annotations
		providers = {
			lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				-- make lazydev completions top priority (see `:h blink.cmp`)
				score_offset = 100,
			},
		},
	},

	-- Forces cmdline to show menu too as in normal mode, not using preset = "inherit" beacuse then "enter" is messing up with command execution
	cmdline = {
		keymap = { preset = "default" },
		completion = { menu = { auto_show = true } },
	},
}
