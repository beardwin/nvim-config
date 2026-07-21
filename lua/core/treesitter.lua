local M = {}

M.languages = {
	'bash',
	'c',
	'diff',
	'eex',
	'elixir',
	'heex',
	'html',
	'lua',
	'luadoc',
	'markdown',
	'markdown_inline',
	'query',
	'vim',
	'vimdoc',
}

local indent_disabled_filetypes = {
	ruby = true,
}

function M.should_enable_indent(filetype)
	return not indent_disabled_filetypes[filetype]
end

return M
