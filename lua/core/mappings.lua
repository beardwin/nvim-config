-- custom mappings
vim.g.mapleader = " "
vim.keymap.set("i", "<C-s>", "<ESC>:w<cr>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- snippets
vim.keymap.set("n", "<leader>rxfc", ":read ~/.config/nvim/.snippets/react-functional-component.tsx<cr>", {noremap = true})
vim.keymap.set("n", "<leader>tsi", ":read ~/.config/nvim/.snippets/typescript-interface.ts<cr>", {noremap = true})
