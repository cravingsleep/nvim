---@diagnostic disable: undefined-global
return {
  'romgrk/barbar.nvim',
  dependencies = {
    { 'lewis6991/gitsigns.nvim', commit = '1ee5c1fd068c81f9dd06483e639c2aa4587dc197' },
    { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
  },
  lazy = false,
  init = function()
    vim.g.barbar_auto_setup = false

    -- lets your pick a tab using a letter
    vim.keymap.set('n', '<C-p>', '<Cmd>BufferPick<CR>', { noremap = true, silent = true })

    -- navigate tabs slightly differently because i am special
    vim.keymap.set('n', ']b', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '[b', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
  end,
  opts = {
    animation = false,
  },
  version = '1.9.1',
}
