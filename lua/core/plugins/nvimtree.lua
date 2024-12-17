return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
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
      filters = { dotfiles = false, custom = { '^.git$', '^.vscode$' } },
      trash = {
        cmd = "trash"
      },
    })

    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true, desc = "Toggle file tree" })
    vim.keymap.set('n', '<leader>trf', ':NvimTreeFocus<cr>', { noremap = true, desc = "Focus file tree" })
    vim.keymap.set('n', '<leader>trc', ':NvimTreeCollapse<cr>', { noremap = true, desc = "Collapse file tree" })
    vim.keymap.set('n', '<leader>fit', ':NvimTreeFindFile<cr>', { noremap = true, desc = "Find in file tree" })
  end,
}
