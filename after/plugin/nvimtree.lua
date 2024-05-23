--disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    adaptive_size = true,
    -- width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
	trash = {
		cmd = "trash"
	},
})

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', {noremap=true})
vim.keymap.set('n', '<leader>trf', ':NvimTreeFocus<cr>', {noremap=true})
vim.keymap.set('n', '<leader>trc', ':NvimTreeCollapse<cr>', {noremap=true})
vim.keymap.set('n', '<leader>fit', ':NvimTreeFindFile<cr>', {noremap=true})
