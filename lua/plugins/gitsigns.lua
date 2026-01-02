return {
  'lewis6991/gitsigns.nvim',
  commit = '130beacf8a51f00aede9c31064c749136679a321',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns')

      vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { buffer = bufnr })
      vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end, { buffer = bufnr })
      vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end, { buffer = bufnr })
    end,
  },
}
