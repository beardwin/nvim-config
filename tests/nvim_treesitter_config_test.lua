package.path = table.concat({
	'./lua/?.lua',
	'./lua/?/init.lua',
	package.path,
}, ';')

local treesitter = require('core.treesitter')
local plugin_spec = dofile('lua/core/plugins/nvim-treesitter.lua')

local function inspect(value)
	if type(value) == 'string' then
		return value
	end

	return tostring(value)
end

local function assert_equal(actual, expected, message)
	if actual ~= expected then
		error(string.format('%s: expected %s, got %s', message, inspect(expected), inspect(actual)))
	end
end

local function contains(list, value)
	for _, item in ipairs(list) do
		if item == value then
			return true
		end
	end

	return false
end

assert_equal(plugin_spec.branch, 'main', 'nvim-treesitter should use main branch')
assert_equal(plugin_spec.lazy, false, 'nvim-treesitter should not be lazy-loaded')
assert_equal(plugin_spec.build, ':TSUpdate', 'nvim-treesitter should update parsers on build')

assert_equal(contains(treesitter.languages, 'markdown'), true, 'markdown parser should be installed')
assert_equal(contains(treesitter.languages, 'markdown_inline'), true, 'markdown_inline parser should be installed')
assert_equal(treesitter.should_enable_indent('ruby'), false, 'ruby indent should stay disabled')
assert_equal(treesitter.should_enable_indent('lua'), true, 'lua indent should stay enabled')
