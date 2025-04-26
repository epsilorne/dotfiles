vim.g.mapleader = " "

-- TOGGLE WRAP
vim.keymap.set("n", "<leader>w", function()
  vim.cmd('set wrap!')
end, {})
