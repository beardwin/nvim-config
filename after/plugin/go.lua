require('go').setup()

vim.keymap.set({ 'n' }, '<C-g>b', ':GoBuild ', { noremap = true, desc = "Run go build" })
vim.keymap.set({ 'n', 'i' }, '<C-g>f', ':GoFmt<cr>', { noremap = true, desc = "Go format" })
vim.keymap.set({ 'n', 'i' }, '<C-g>d', ':GoDoc<cr>', { noremap = true, desc = "Open the Go docs for this" })
vim.keymap.set({ 'n', 'i' }, '<C-g>o', ':GoPkgOutline<cr>', { noremap = true, desc = "Toggle the Go package outline" })
vim.keymap.set({ 'n', 'i' }, '<C-g>i', ':GoImpl', { noremap = true, desc = "Run go impl" })
