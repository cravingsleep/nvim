---@diagnostic disable: undefined-global
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
-- add line numbers
vim.opt.number = true
-- make the line numbers the cursor is not on relative to the cursor
vim.opt.relativenumber = true
-- make search smarter, avoid case only if it is in the search query
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- connect yank with the system clipboard
vim.opt.clipboard = 'unnamedplus'
-- highlight the yanked text for a short time afterwards
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 150 }) end,
})
-- disable netrw so we can use neotree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- enable 24 bit colour
vim.opt.termguicolors = true

-- vim will tell us the showmode in the command buffer but lualine will do
-- that for us so disable it
vim.opt.showmode = false

-- when the LSP reports something bad we do not want any signs in the gutter
vim.diagnostic.config({
  signs = false,
  virtual_text = true,
  underline = true,
})

-- save quickly because I'm bad at hitting the : key
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { noremap = true })

-- Press jj to exit terminal mode
vim.api.nvim_set_keymap('t', 'jj', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Setup lazy.nvim
require('lazy').setup({
  spec = {
    -- import your plugins
    { import = 'plugins' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'dracula' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        'gzip',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
        'spellfile',
        'netrwPlugin',
      },
    },
  },
})
