-- staging
vim.keymap.set('n', '<leader>gs', ":Git status<cr>", {noremap = true})
vim.keymap.set('n', '<leader>ga', ":Git add<cr>", {noremap = true})
vim.keymap.set('n', '<leader>gc', ":Git commit<cr>", {noremap = true})

-- synching
vim.keymap.set('n', '<leader>gp', ":Git push<cr>", {noremap = true})
vim.keymap.set('n', '<leader>gpf', ':Git push --force-with-lease<cr>', {noremap = true})
vim.keymap.set('n', '<leader>gl', ":Git pull<cr>", {noremap = true})
vim.keymap.set('n', '<leader>gf', ":Git fetch<cr>", {noremap = true})

-- git rebase
vim.keymap.set('n', '<leader>gr', ":Git rebase -i<cr>", {noremap = true})
vim.keymap.set('n', '<leader>grc', ":Git rebase --continue<cr>", {noremap = true})
vim.keymap.set('n', '<leader>gra', ":Git rebase --abort<cr>", {noremap = true})