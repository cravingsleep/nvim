return {
  'nvim-telescope/telescope-frecency.nvim',
  version = '1.2.2',
  config = function() require('telescope').load_extension('frecency') end,
  keys = {
    { '<leader>v', '<cmd>:Telescope frecency<cr>' },
  },
}
