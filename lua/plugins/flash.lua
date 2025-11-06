return {
  'folke/flash.nvim',
  commit = 'b68bda044d68e4026c4e1ec6df3c5afd7eb8e341',
  event = 'VeryLazy',
  opts = {
    modes = {
      search = { enabled = false },
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
}
