return {'prettier/vim-prettier',
	run = 'yarn install',
	config = function() 
		vim.g["prettier#config#tabWidth"] = 2
		vim.g["prettier#config#useTabs"] = false
	end
}

