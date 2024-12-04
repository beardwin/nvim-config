require('nvim-treesitter.configs').setup({
    ensure_installed = { "go" },
    highlight = {
        enable = true,
        disable = "help"
    },
})

return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "go", "lua", "javascript" }, -- Add Go here
                highlight = { enable = true },
            })
        end,
    },
}

