return {
  'mikavilpas/yazi.nvim',
  version = '13.0.0', -- use the latest stable version
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true, commit = DepsCommits.plenary },
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '<leader>e',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      '<c-up>',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume the last yazi session',
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = 'g?',
    },
  },
}
