require('nvim-treesitter.configs').setup({
    ensure_installed = { "go" },
    highlight = {
        enable = true,
    },
})

return {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    }

