local treesitter = require('core.treesitter')

return {
	'nvim-treesitter/nvim-treesitter',
	branch = 'main',
	lazy = false,
	build = ':TSUpdate',
	config = function()
		local nvim_treesitter = require('nvim-treesitter')
		local group = vim.api.nvim_create_augroup('core-treesitter', { clear = true })
		local install_dir = vim.fn.stdpath('data') .. '/lazy/nvim-treesitter'

		nvim_treesitter.setup({ install_dir = install_dir })

		vim.api.nvim_create_autocmd('FileType', {
			group = group,
			callback = function(event)
				local filetype = vim.bo[event.buf].filetype
				local language = vim.treesitter.language.get_lang(filetype)

				if not language then
					return
				end

				local ok = pcall(vim.treesitter.start, event.buf, language)
				if not ok or not treesitter.should_enable_indent(filetype) then
					return
				end

				vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
