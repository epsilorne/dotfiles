local opt = vim.opt

-- Tabs / Indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- -- Search
-- opt.incsearch = true
-- opt.ignorecase = true
-- opt.smartcase = true

-- -- Visuals
opt.number = true
opt.relativenumber = true
opt.fillchars = {eob = " "}
opt.showtabline = 0
-- opt.termguicolors = true

opt.scrolloff = 8

opt.colorcolumn = '80'
opt.signcolumn = "yes"

opt.winborder = "single"

-- opt.cmdheight = 1
-- opt.scrolloff = 10
-- opt.completeopt = "menuone,noinsert,noselect"
--
-- -- Behaviour
-- opt.hidden = true
-- opt.errorbells = false
-- opt.backspace = "indent,eol,start"
-- opt.splitright = true
-- opt.splitbelow = true
-- opt.autochdir = false
-- opt.modifiable = true
opt.hlsearch = false
opt.incsearch = true
