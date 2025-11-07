return {
  'dnlhc/glance.nvim',
  commit = 'bf86d8b79dce808e65fdb6e9269d0b4ed6d2eefc',
  cmd = 'Glance',
  opts = {
    detached = true,
    list = { position = 'left' },
    folds = { folded = false },
    hooks = {
      before_open = function(results, open, jump)
        if #results == 1 then
          jump(results[1])
        else
          open(results)
        end
      end,
    },
  },
  keys = {
    { 'gd', function() require('glance').actions.open('definitions') end, { noremap = true } },
    { 'gr', function() require('glance').actions.open('references') end, { noremap = true } },
    -- these are not glance controlled but they work with the LSP
    { 'gk', vim.diagnostic.open_float, { noremap = true } },
    { 'gK', vim.lsp.buf.hover, { noremap = true } },
  },
}
