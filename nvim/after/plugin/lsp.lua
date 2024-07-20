local lsp_zero = require("lsp-zero")
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		"tsserver",
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	}

})

local cmp = require('cmp')

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
	},
	mapping = {
		['<C-Enter>'] = cmp.mapping.confirm({select = false}),
		['<Esc>'] = cmp.mapping.abort(),
		['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
		['<C-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})

lsp_zero.set_preferences({
	sign_icons = { }
})


