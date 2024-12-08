-- for the crazy notifications and cmdline popupmenu
local noice = require("noice")

noice.setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true, -- add a border to hover docs and signature help
  },
})

vim.keymap.set("n", "<leader>nl", function()
  noice.cmd("last")
end, {desc = "Show last notification"})

vim.keymap.set("n", "<leader>nh", function()
  noice.cmd("history")
end, {desc = "Show notification history"})

vim.keymap.set("n", "<leader>nd", function()
  noice.cmd("dismiss")
end, {desc = "Dismiss all notifications"})

vim.keymap.set("n", "<leader>ne", function()
  noice.cmd("errors")
end, {desc = "Show last errors"})

vim.keymap.set("n", "<leader>n!", function()
  noice.cmd("disable")
end, {desc = "Disable notifications"})

vim.keymap.set("n", "<leader>n*", function()
  noice.cmd("enable")
end, {desc = "Enable notifications"})

vim.keymap.set("n", "<leader>ns", function()
  noice.cmd("stats")
end, {desc = "Show notification stats"})

vim.keymap.set("n", "<leader>nt", function()
  noice.cmd("telescope")
end, {desc = "Show notifications in Telescope"})
