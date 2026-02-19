return {
  'lewis6991/gitsigns.nvim',
  commit = '9f3c6dd7868bcc116e9c1c1929ce063b978fa519',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns')

      vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { buffer = bufnr })
      vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end, { buffer = bufnr })
      vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end, { buffer = bufnr })
    end,
  },
}
