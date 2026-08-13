return {
  'stevearc/conform.nvim',
  commit = '016802de402556da54c36bd7359b441266b01cdd',
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
      typescript = { 'prettierd' },
      typescriptreact = { 'prettierd' },
      javascript = { 'prettierd' },
      lua = { 'stylua' },
      gdscript = { 'gdformat' },
      rust = { 'rustfmt' },
      -- python = { 'ruff' },
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
