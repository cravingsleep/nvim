return {
  'cravingsleep/bufonite',
  commit = DepsCommits.bufonite,
  lazy = false,
  opts = {},
  keys = {
    { '<Tab>', function() require('bufonite').switch_to_alt() end },
  },
}
