local treesitter = require('core.treesitter')

return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'main',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = treesitter.languages,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
				disable = function(_, bufnr)
					return not treesitter.should_enable_indent(vim.bo[bufnr].filetype)
				end,
			},
		})
	end,
}
