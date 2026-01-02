return {
  'dmtrKovalenko/fff.nvim',
  commit = 'f6af8353c3cb02ddde1588f24f27ff8b3a4037cf',
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
