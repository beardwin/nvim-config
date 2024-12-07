local neogit = require("neogit")
neogit.setup({})

-- windows
vim.keymap.set("n", "<leader>G", function()
  neogit.open()
end)

vim.keymap.set("n", "<leader>gc", function()
  neogit.open({"commit"})
end)

vim.keymap.set("n", "<leader>gs", function()
  neogit.open({kind = "split_below_all"})
end)

-- git commands
-- fetch
vim.keymap.set("n", "<leader>gf", function()
  neogit.open({"fetch"})
end)

-- pull
vim.keymap.set("n", "<leader>gp", function()
  neogit.open({"pull"})
end)

-- push
vim.keymap.set("n", "<leader>gP", function()
  neogit.open({"push"})
end)

-- branch
vim.keymap.set("n", "<leader>gb", function()
  neogit.open({"branch"})
end)

-- log
vim.keymap.set("n", "<leader>gl", function()
  neogit.open({"log"})
end)

-- rebase
vim.keymap.set("n", "<leader>gR", function()
  neogit.open({"rebase"})
end)

-- status
vim.keymap.set("n", "<leader>gs", function()
  neogit.open({kind = "split_below_all"})
end)

-- Diffview
vim.keymap.set('n', '<leader>g>', ":DiffviewOpen<cr>", {noremap = true})
