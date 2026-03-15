local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- UI
opt.termguicolors = true
opt.signcolumn = 'yes'
opt.cursorline = true
opt.scrolloff = 8
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Split
opt.splitbelow = true
opt.splitright = true

-- Performance
opt.updatetime = 100
opt.timeoutlen = 300

-- Clipboard
opt.clipboard = 'unnamedplus'
