-- Sneak. the whole s-S motion
return {
	"justinmk/vim-sneak",
	config = function()
		vim.keymap.set("n", "<C-s>", "<Plug>Sneak_s", { noremap = true, desc = "Sneak ahead" })
		vim.keymap.set("n", "<C-S>", "<Plug>Sneak_S", { noremap = true, desc = "Sneak behind" })
	end,
}
