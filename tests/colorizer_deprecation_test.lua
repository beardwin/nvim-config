local plugin_spec = dofile('lua/core/plugins/colorizer.lua')

assert(plugin_spec[1] == 'catgoose/nvim-colorizer.lua', 'colorizer should use the maintained catgoose fork')
assert(type(plugin_spec.config) == 'function', 'colorizer plugin should keep a config function')
