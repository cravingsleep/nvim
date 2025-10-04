return {
  'kylechui/nvim-surround',
  version = '3.1.6',
  event = 'VeryLazy',
  config = function()
    require('nvim-surround').setup({
      -- Configuration here, or leave empty to use defaults
    })
  end,
}
