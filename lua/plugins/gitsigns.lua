return {
  'lewis6991/gitsigns.nvim',
  commit = '1ee5c1fd068c81f9dd06483e639c2aa4587dc197',
  opts = {
    on_attach = function(bufnr)
      local gitsigns = require('gitsigns')

      vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { buffer = bufnr })
    end,
  },
}
