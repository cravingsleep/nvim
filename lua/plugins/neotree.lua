---@diagnostic disable: undefined-global
return {
  'nvim-neo-tree/neo-tree.nvim',
  tag = '3.36.1',
  cmd = 'Neotree',
  dependencies = {
    { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
    { 'MunifTanjim/nui.nvim', commit = DepsCommits.nui },
    { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
  },
  keys = {
    {
      '<leader>e',
      function()
        require('neo-tree.command').execute({ toggle = true, dir = vim.uv.cwd(), position = 'current', reveal = true })
      end,
      { noremap = true },
    },
  },
}
