local builtin = require('telescope.builtin')

require('telescope').setup({
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" }
		}
	}
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fsh', builtin.search_history, {})
vim.keymap.set('n', '<leader>fcs', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

