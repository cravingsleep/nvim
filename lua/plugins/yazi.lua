return {
  'mikavilpas/yazi.nvim',
  version = '13.0.0',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true, commit = DepsCommits.plenary },
  },
  keys = {
    {
      '<leader>e',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
    },
  },
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = 'g?',
    },
  },
}
