return {
  'https://github.com/j-morano/buffer_manager.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
  commit = 'a39ab3851a5487ac39cac4be43715b69349b8df7',
  opts = {
    focus_alternate_buffer = true,
    select_menu_item_commands = {
      v = {
        key = '<C-v>',
        command = 'vsplit',
      },
      h = {
        key = '<C-h>',
        command = 'split',
      },
      o = {
        key = 'o',
        command = 'edit',
      },
    },
  },
  keys = {
    { '<C-e>', function() require('buffer_manager.ui').toggle_quick_menu() end, { noremap = true } },
    { '[b', function() require('buffer_manager.ui').nav_prev() end, { noremap = true } },
    { ']b', function() require('buffer_manager.ui').nav_next() end, { noremap = true } },
  },
}
