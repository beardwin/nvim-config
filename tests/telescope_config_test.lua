local plugin_spec = dofile('lua/core/plugins/telescope.lua')

assert(plugin_spec[1] == 'nvim-telescope/telescope.nvim', 'telescope plugin spec should target telescope.nvim')
assert(plugin_spec.branch == 'master', 'telescope should use the upstream master branch for Neovim 0.12 Treesitter compatibility')
assert(type(plugin_spec.config) == 'function', 'telescope plugin should keep a config function')
