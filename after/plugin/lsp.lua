vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')


-- keymaps to add only on buffers with LSP support (overriding grep/tags based defaults)
-- lsp.on_attach(function(client, bufnr)
--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,     { desc = '[G]o to [d]efinition',buffer = bufnr, remap = false })
--   vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end,    { desc = '[G]o to [D]eclaration',buffer = bufnr, remap = false })
--   vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end,     { desc = '[G]o to [R]eferences (with LSP)', buffer = bufnr, remap = false })
--   vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, { desc = '[G]o to [I]mplementation (with LSP)', buffer = bufnr, remap = false })
--   vim.keymap.set("n", "K",  function() vim.lsp.buf.hover() end,          { desc = '[K] Hover info', buffer = bufnr, remap = false })
--   vim.keymap.set("n", "R",  function() vim.lsp.buf.rename() end,         { desc = '[R]ename symbol (with LSP)', buffer = bufnr, remap = false })
-- end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
  		'html',
  		'cssls',
  		'tsserver',
  		-- 'solargraph',
  		'eslint',
  		'lua_ls',
	},
	
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

