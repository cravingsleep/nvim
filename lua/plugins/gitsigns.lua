return {
  'lewis6991/gitsigns.nvim',
  commit = '5be654f2232c10ddcad19c1607a67b6b4b78fc29',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns')

      vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { buffer = bufnr })
      vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end, { buffer = bufnr })
      vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end, { buffer = bufnr })
    end,
  },
}
