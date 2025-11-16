return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
    { 'cravingsleep/bufonite', commit = DepsCommits.bufonite },
  },
  commit = 'b8c23159c0161f4b89196f74ee3a6d02cdc3a955',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'dracula-nvim',
    },
    sections = {
      lualine_a = { 'mode', 'branch' },
      lualine_b = {
        { 'filename' },
        {
          function() return require('bufonite').lualine_altbuffer() end,
        },
        {
          function()
            local buffers_open = require('bufonite').get_buffer_count()

            return tostring(buffers_open)
          end,
        },
      },
      lualine_c = {},
      lualine_x = {
        { 'lsp_status' },
      },
      lualine_y = {
        { 'location' },
      },
      lualine_z = {
        { 'datetime', style = '%H:%M' },
      },
    },
  },
}
