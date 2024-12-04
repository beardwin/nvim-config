vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')


-- keymaps to add only on buffers with LSP support (overriding grep/tags based defaults)
lsp.on_attach(function(client, bufnr)
  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end,     {
		desc = '[G]o to [d]efinition',buffer = bufnr, remap = false }
	)

  vim.keymap.set("n", "<leader>gD", function() vim.lsp.buf.declaration() end,    {
		desc = '[G]o to [D]eclaration',buffer = bufnr, remap = false
	})

  vim.keymap.set("n", "<leader>gr", function() vim.lsp.buf.references() end,     {
		desc = '[G]o to [r]eferences (with LSP)', buffer = bufnr, remap = false
	})

  vim.keymap.set("n", "<leader>gi", function() vim.lsp.buf.implementation() end, {
		desc = '[G]o to [i]mplementation (with LSP)', buffer = bufnr, remap = false
	})

  vim.keymap.set("n", "<C-H>",  function() vim.lsp.buf.hover() end,          {
		desc = '[H]over info', buffer = bufnr, remap = false
	})

  vim.keymap.set("n", "<C-R>",  function() vim.lsp.buf.rename() end,         {
		desc = '[R]ename symbol (with LSP)', buffer = bufnr, remap = false
	})

  vim.keymap.set("n", '<C-,>', function () vim.lsp.buf.code_action() end, {
    desc = "Selects a code actions available at the current cursor position.", 
    buffer = bufnr, remap = false 
  })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
  		'html',
  		'cssls',
  		'ts_ls',
  		-- 'solargraph',
  		'eslint',
  		'lua_ls',
      'gopls',
	},
	
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

