return {
  "nvim-pack/nvim-spectre",
  keys = {
     {'<C-s>', "<cmd>SpectreWithCWD<cr>",mode={'n'}},
  },
  config = function()
     require('spectre').setup({ is_block_ui_break = true })
  end,
}
