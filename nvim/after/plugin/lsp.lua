local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.defualt_keymaps({buffer = bufnr})
end)
