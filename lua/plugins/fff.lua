return {
  'dmtrKovalenko/fff.nvim',
  commit = '2df06289c9a20545d9d060ceb26cc0cffd53ab9e',
  build = function() require('fff.download').download_or_build_binary() end,
  opts = {
    debug = {
      enabled = false,
      show_scores = false,
    },
    prompt = '> ',
  },
  lazy = false,
  keys = {
    {
      '<leader><leader>',
      function() require('fff').find_files() end,
    },
  },
}
