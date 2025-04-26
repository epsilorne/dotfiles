-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require('config.globals')
require('config.options')

local opts = {
  install = {},
  rtp = {
    disabled_plugins = {
      "netrw",
      "netrwPlugin"
    }
  },
}

-- Setup lazy.nvim
require("lazy").setup('plugins',  opts)

-- Set transparency for windows
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

-- Set transparency for bufferline
-- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
-- vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
-- vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "none" })
-- vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "none" })
