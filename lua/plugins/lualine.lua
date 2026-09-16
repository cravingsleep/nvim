local DARK_GRAY = '#4c4f69'

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
    { 'cravingsleep/bufonite', commit = DepsCommits.bufonite },
  },
  commit = '221ce6b2d999187044529f49da6554a92f740a96',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'catppuccin-latte',
    },
    sections = {
      lualine_a = { 'mode', 'branch' },
      lualine_b = {
        { 'filename', color = { fg = DARK_GRAY } },
        {
          function() return require('bufonite').lualine_altbuffer({ prefix_icon = '' }) end,
          color = { fg = DARK_GRAY },
        },
      },
      lualine_c = {},
      lualine_x = {
        { 'lsp_status' },
      },
      lualine_y = {
        { 'location', color = { fg = DARK_GRAY } },
      },
      lualine_z = {
        { 'datetime', style = '%H:%M' },
      },
    },
  },
}
