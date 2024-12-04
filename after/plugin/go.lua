require('go').setup()

-- Run gofmt + goimports on save

local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})

vim.keymap.set({'n'}, '<C-g><C-b>', ':GoBuild ', {noremap = true})
vim.keymap.set({'n', 'i'}, '<C-g><C-f>', ':GoFmt<cr>', {noremap = true})
vim.keymap.set({'n', 'i'}, '<C-g><C-d>', ':GoDoc<cr>', {noremap = true})
vim.keymap.set({'n', 'i'}, '<C-g><C-o>', ':GoPkgOutline<cr>', {noremap = true})
vim.keymap.set({'n', 'i'}, '<C-g><C-i>', ':GoImpl', {noremap = true})

