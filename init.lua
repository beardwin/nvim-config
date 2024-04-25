-- set relative line numbers in netrw
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
vim.g.ma = true

require('core.options')
require('core.mappings')
require('core.plugins')
require('lazy').setup('core.plugins')
require('undotree').setup()

