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

vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find file..."})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {desc = "Find current string in files..."})
vim.keymap.set('n', '<leader>fg', function() 
  builtin.grep_string({search = vim.fn.input("Grep > ")}) end
  , {desc = "Grep in files; show results in Telescope"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Show all buffers..."})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc ="Show all tags..."})
vim.keymap.set('n', '<leader>fsh', builtin.search_history, {desc = "Show search history..."})
vim.keymap.set('n', '<leader>fcs', builtin.colorscheme, {desc = "Change colorscheme"})
vim.keymap.set('n', '<leader>fr', function() builtin.lsp_references({show_line = false }) end, {desc = "Find all references..."})
vim.keymap.set('n', '<leader>f%', builtin.lsp_workspace_symbols, {desc = "Find symbol in workspace..."})
vim.keymap.set('n', '<leader>fd%', builtin.lsp_document_symbols, {desc = "Find symbol in document..."})
