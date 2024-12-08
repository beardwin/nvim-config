local neogit = require("neogit")
neogit.setup({})

-- windows
vim.keymap.set("n", "<leader>G", function()
  neogit.open()
end, {desc = "Open Neogit"})

vim.keymap.set("n", "<leader>gc", function()
  neogit.open({"commit"})
end, {desc = "Git commit..."})

vim.keymap.set("n", "<leader>gs", function()
  neogit.open({kind = "split_below_all"})
end, {desc = "Git status..."})

-- git commands
-- fetch
vim.keymap.set("n", "<leader>gf", function()
  neogit.open({"fetch"})
end, {desc = "Git fetch..."})

-- pull
vim.keymap.set("n", "<leader>gp", function()
  neogit.open({"pull"})
end, {desc = "Git pull..."})

-- push
vim.keymap.set("n", "<leader>gP", function()
  neogit.open({"push"})
end, {desc = "Git push..."})

-- branch
vim.keymap.set("n", "<leader>gb", function()
  neogit.open({"branch"})
end, {desc = "Git branch..."})

-- log
vim.keymap.set("n", "<leader>gl", function()
  neogit.open({"log"})
end, {desc = "Git log..."})

-- rebase
vim.keymap.set("n", "<leader>gR", function()
  neogit.open({"rebase"})
end, {desc = "Git rebase..."})

-- merge
vim.keymap.set("n", "<leader>gM", function()
  neogit.open({"merge"})
end, {desc = "Git merge..."})

-- stash
vim.keymap.set("n", "<leader>gS", function()
  neogit.open({"stash"})
end, {desc = "Git stash..."})

-- Diffview
vim.keymap.set('n', '<leader>g>', ":DiffviewOpen<cr>", {noremap = true, desc = "Git diff"})
