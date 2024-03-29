local cmp = require("cmp")

-- If you want insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

local luasnip = require("luasnip")

local lspkind = require("lspkind")

-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
require("luasnip.loaders.from_vscode").lazy_load()

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
	snippet = { -- configure how nvim-cmp interacts with snippet engine
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items

		-- super tabs mapping
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
				-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
				-- that way you will only jump inside the snippet region
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	-- sources for autocompletion
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- running lsp
		{ name = "nvim_lua" }, -- nvim related lua completion
		{ name = "luasnip" }, -- snippets
		{ name = "buffer" }, -- text within current buffer
		{ -- english words
			name = "look",
			keyword_length = 4, -- start after 4 words are typed in
			option = {
				convert_case = true, -- Convert the candidates to match the input characters in the case.
				loud = true, -- Convert the candidates to UPPERCASE if all input characters are uppercase.
			},
		},
		{ name = "path" }, -- file system paths
	}),

	-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(), -- some def mapping `https://github.com/hrsh7th/nvim-cmp/blob/main/lua/cmp/config/mapping.lua`
		sources = {
			{ name = "buffer" },
		},
	}),

	-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	}),

	experimental = {
		ghost_text = true,
	},

	-- controls how the completion box looks like
	formatting = {
		-- configure lspkind for vs-code like pictograms in completion menu
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})
