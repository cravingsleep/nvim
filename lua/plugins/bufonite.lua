return {
  'cravingsleep/bufonite',
  commit = DepsCommits.bufonite,
  dependencies = { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
  lazy = false,
  opts = {},
  keys = {
    { '<C-e>', function() require('bufonite').show_buffers() end, { noremap = true } },
    { '<Tab>', function() require('bufonite').switch_to_alt() end, { noremap = true } },
  },
}
