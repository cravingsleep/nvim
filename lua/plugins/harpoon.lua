---@diagnostic disable: undefined-global
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  commit = DepsCommits.harpoon,
  dependencies = {
    { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
  },
  keys = function()
    local harpoon = require('harpoon')

    return {
      { '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end },
      { '<leader>a', function() harpoon:list():add() end, desc = 'Harpoon add file' },
      { ']b', function() harpoon:list():prev() end, desc = 'Harpoon previous' },
      { '[b', function() harpoon:list():next() end, desc = 'Harpoon next' },
    }
  end,
}
