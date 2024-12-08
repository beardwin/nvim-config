-- custom mappings
vim.g.mapleader = " "
vim.keymap.set({'n', 'i'}, "<C-s>", "<ESC>:w<cr>", {desc = "Save"})
vim.keymap.set('n', "<leader>pb", ":!pnpm tsc:build<cr>", {desc = "run pnpm tsc:build"})
vim.keymap.set('n', "<leader>pt", ":!pnpm tsc<cr>", {desc = "run pnpm tsc"})
vim.keymap.set('n', "<leader>pi", ":!pnpm install<cr>", {desc = "run pnpm install"})

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>y", "\"+yy", {desc = "Yank current line to pasteboard"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "Yank selected to pasteboard"})
vim.keymap.set("n", "<leader>wo", ":%bd|e#|bd#<cr>", {desc = "Delete all other buffers"})

-- snippets
vim.keymap.set("n", "<leader>Sc", ":read ~/.config/nvim/.snippets/react-functional-component.tsx<cr>", {noremap = true, desc = "Snippet: React functional component"})
vim.keymap.set("n", "<leader>Si", ":read ~/.config/nvim/.snippets/typescript-interface.ts<cr>", {noremap = true, desc = "Snippet: TypeScript interface"})
