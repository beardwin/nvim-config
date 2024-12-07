-- branching
vim.keymap.set('n', '<leader>go', ":G checkout ", {noremap = true})
vim.keymap.set('n', '<leader>gbl', ":G branch -l<cr>", {noremap = true})

-- staging
-- vim.keymap.set('n', '<leader>gd', ":G difftool<cr>", {noremap = true})
-- vim.keymap.set('n', '<leader>gs', ":Git status<cr>", {noremap = true})
vim.keymap.set('n', '<leader>ga', ":Git add ", {noremap = true})
-- vim.keymap.set('n', '<leader>gc', ":Git commit -m ", {noremap = true})
-- vim.keymap.set('n', '<leader>gf', ":Git diff<cr>", {noremap = true})

-- synching
-- vim.keymap.set('n', '<leader>gp', ":Git push<cr>", {noremap = true})
-- vim.keymap.set('n', '<leader>gfp', ':Git push --force-with-lease<cr>', {noremap = true})
-- vim.keymap.set('n', '<leader>gl', ":Git pull --rebase<cr>", {noremap = true})

-- git rebase
vim.keymap.set('n', '<leader>gr', ":Git rebase -i ", {noremap = true})
vim.keymap.set('n', '<leader>gcr', ":Git rebase --continue<cr>", {noremap = true})
vim.keymap.set('n', '<leader>gqr', ":Git rebase --abort<cr>", {noremap = true})
