local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ['<c-d>'] = require('telescope.actions').delete_buffer
      },
      i = {
        ['<c-h>'] = "which_key",
        ['<c-d>'] = require('telescope.actions').delete_buffer
      }
    },
    path_display = {"truncate"},
  }, 
	pickers = {
		find_files = {
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
	}
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fsh', builtin.search_history, {})
vim.keymap.set('n', '<leader>fcs', builtin.colorscheme, {})chore/store-recently-viewed-tests
vim.keymap.set('n', '<leader>fr', function() builtin.lsp_references({show_line = false }) end, {})
vim.keymap.set('n', '<leader>f%', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fd%', builtin.lsp_document_symbols, {})
