---@diagnostic disable: undefined-global
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', commit = DepsCommits.devicons },
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
        {
          'buffers',
          show_modified_status = false,
          symbols = {
            alternate_file = '',
          },
        },
      },
      lualine_c = {},
      lualine_x = {
        { 'lsp_status', cond = function() return vim.bo.buftype ~= 'terminal' end },
      },
      lualine_y = {
        { 'location', cond = function() return vim.bo.buftype ~= 'terminal' end },
      },
      lualine_z = {
        { 'datetime', style = '%H:%M' },
      },
    },
  },
}
