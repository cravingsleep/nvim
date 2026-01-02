return {
  'rachartier/tiny-code-action.nvim',
  commit = '897de9af9e3aa6e59bcb9fec760a7eb02d00e264',
  dependencies = {
    { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
  },
  event = 'LspAttach',
  opts = {
    picker = {
      'buffer',
      opts = {
        hotkeys = true,
        hotkeys_mode = function()
          return {
            'j',
            'f',
            'd',
            'k',
            's',
            'l',
            'a',
            ';',
            'g',
            'h',
            'u',
            'r',
            'i',
            'e',
            'o',
            'w',
            'p',
            'q',
            'n',
            'v',
            'b',
            'c',
            'm',
            'x',
            'z',
          }
        end,
        auto_preview = false,
        auto_accept = true,
        position = 'cursor',
        winborder = 'single',
        keymaps = {
          preview = 'K',
          close = { 'q', '<Esc>' },
          select = '<CR>',
          preview_close = { 'q', '<Esc>' },
        },
        group_icon = ' └',
      },
    },
  },
  keys = {
    {
      'g.',
      function() require('tiny-code-action').code_action() end,
      { noremap = true, silent = true },
    },
    {
      '<leader>ca',
      function() require('tiny-code-action').code_action() end,
      { noremap = true, silent = true },
    },
  },
}
