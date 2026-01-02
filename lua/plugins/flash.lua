return {
  'folke/flash.nvim',
  commit = 'fcea7ff883235d9024dc41e638f164a450c14ca2',
  event = 'VeryLazy',
  opts = {
    modes = {
      search = { enabled = true },
      char = {
        enabled = true,
        -- disable f,t from jumping to the next search and resort to normal vim behaviour
        char_actions = function()
          return {
            [';'] = 'next',
            [','] = 'prev',
          }
        end,
      },
      remote = { enabled = false },
    },
  },
  keys = {
    { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end },
    { 'S', mode = { 'n', 'x', 'o' }, function() require('flash').treesitter() end },
    { 'R', mode = { 'o', 'x' }, function() require('flash').treesitter_search() end },
  },
}
