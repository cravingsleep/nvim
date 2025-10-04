---@diagnostic disable: undefined-global
return {
  'stevearc/conform.nvim',
  commit = '9d859cbfbde7a1bd1770e7c97aef30ec5a237a71',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function() require('conform').format({ async = true }) end,
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
    },
    default_format_opts = {
      lsp_format = 'fallback',
    },
    format_on_save = { timeout_ms = 500 },
  },
  -- init = function()
  --   -- If you want the formatexpr, here is the place to set it
  --   vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  -- end,
}
