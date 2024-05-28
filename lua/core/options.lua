vim.g.modifiable = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.wo.relativenumber = true
vim.wo.wrap = false
 
-- Create an autocmd for the TextYankPost event
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    -- Highlight the yanked region
    vim.highlight.on_yank({
      higroup = 'Visual',
      timeout = 200,
    })
  end
})

