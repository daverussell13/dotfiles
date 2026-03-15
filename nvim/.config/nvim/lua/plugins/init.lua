-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git', 'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- Best colorscheme of all time (Catppuccin)
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('catppuccin-mocha')
    end,
  },

  -- Lualine (Status Line)
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({ options = { theme = 'auto' } })
    end,
  },

  -- Nvim Tree (File Explorer)
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup()
      vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle file explorer' })
    end,
  },

  -- Telescope (Fuzzy Finder)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
    end,
  },

  -- Treesitter (Syntax Highlight)
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.config').setup({
        ensure_installed = { 'lua', 'go', 'html', 'css', 'javascript', 'typescript', 'sql', 'dockerfile', 'yaml' },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')
      cmp.setup({
        snippet = {
          expand = function(args) luasnip.lsp_expand(args.body) end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        }),
      })
    end,
  },

  -- Autopairs (Auto Closing Pairs [], (), "", '', etc)
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  },

  -- Comment
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
})
