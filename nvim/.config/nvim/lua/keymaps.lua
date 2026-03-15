local map = vim.keymap.set

-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalheader = ' '

-- General
map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save' })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })
map('n', '<leader>Q', '<cmd>qa<cr>', { desc = 'Quit all' })

-- Window Navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
map('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
map('n', '<C-l>', '<C-w>l', { desc = 'Move right' })

-- Split
map('n', '<leader>sv', '<cmd>vsplit<cr>', { desc = 'Split vertical' })
map('n', '<leader>sh', '<cmd>split<cr>', { desc = 'Split horizontal' })

-- Buffer
map('n', '<Tab>', '<cmd>bnext<cr>', { desc = 'Next buffer' })
map('n', '<S-Tab>', '<cmd>bprev<cr>', { desc = 'Prev buffer' })
map('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete buffer' })

-- Indentation
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
map('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move line down' })
map('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move line up' })

-- Clear search highlight
map('n', '<Esc>', '<cmd>nohlsearch<cr>')
