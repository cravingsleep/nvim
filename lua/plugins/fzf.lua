return {
  'ibhagwan/fzf-lua',
  cmd = 'FzfLua',
  commit = '478869cf8c4b4354771c27b6b8e9f985cb274de2',
  dependencies = { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
  opts = {
    files = {
      -- put the filename first when searching
      formatter = 'path.filename_first',
      -- ignore common installation and output folders
      fd_opts = [[--type f --hidden -E .git -E node_modules -E dist -E build -E out ]],
      rg_opts = [[--column --line-number --no-heading --color=always --smart-case --hidden  -g '!.git/' -g '!node_modules/']],
    },
  },
  keys = {
    { '<leader><leader>', function() require('fzf-lua').files() end, { noremap = true, silent = true } },
    { '<leader>/', function() require('fzf-lua').live_grep() end, { noremap = true, silent = true } },
    { '<leader>s', function() require('fzf-lua').lsp_document_symbols() end, { noremap = true, silent = true } },
  },
}
