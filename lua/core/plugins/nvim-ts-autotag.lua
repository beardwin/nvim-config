return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		aliases = {
			eelixir = "html",
			eex = "html",
		},
	},
}
