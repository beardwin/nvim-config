local source_path = 'lua/core/plugins/nvim-lspconfig.lua'
local lines = vim.fn.readfile(source_path)
local source = table.concat(lines, '\n')

assert(not source:find('client%.supports_method%(', 1, false), 'nvim-lspconfig should not use deprecated client.supports_method syntax')
assert(source:find('client:supports_method%(', 1, false), 'nvim-lspconfig should use client:supports_method syntax')
assert(source:find('map%("gd", vim%.lsp%.buf%.definition', 1, false), 'gd should use vim.lsp.buf.definition directly')
assert(source:find('map%("gI", vim%.lsp%.buf%.implementation', 1, false), 'gI should use vim.lsp.buf.implementation directly')
assert(source:find('map%("<leader>D", vim%.lsp%.buf%.type_definition', 1, false), '<leader>D should use vim.lsp.buf.type_definition directly')
assert(source:find('map%("<leader>ca", vim%.lsp%.buf%.code_action', 1, false), '<leader>ca should use vim.lsp.buf.code_action directly')
