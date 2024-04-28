local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp_action.toggle_completion(),
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['C-u'] = cmp.mapping.scroll_docs(-4),
		['C-d'] = cmp.mapping.scroll_docs(4),
	}),

	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})

