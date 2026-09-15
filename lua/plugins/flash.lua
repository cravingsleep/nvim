return {
  'folke/flash.nvim',
  commit = 'b6346946d10d07998efee029fb0f7a593806d0cd',
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
    { '<C-S>', mode = { 'n', 'x', 'o' }, function() require('flash').treesitter() end },
    { 'R', mode = { 'o', 'x' }, function() require('flash').treesitter_search() end },
  },
}
