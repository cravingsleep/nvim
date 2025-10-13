---@diagnostic disable: undefined-global
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  commit = DepsCommits.harpoon,
  dependencies = {
    { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
    { 'nvim-telescope/telescope.nvim', commit = DepsCommits.telescope },
  },
  keys = function()
    local harpoon = require('harpoon')

    -- basic telescope configuration
    local conf = require('telescope.config').values

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    vim.keymap.set('n', '<C-e>', function() toggle_telescope(harpoon:list()) end, { desc = 'Open harpoon window' })

    return {
      { '<leader>a', function() harpoon:list():add() end, desc = 'Harpoon add file' },
      { ']b', function() harpoon:list():prev() end, desc = 'Harpoon previous' },
      { '[b', function() harpoon:list():next() end, desc = 'Harpoon next' },
    }
  end,
}
