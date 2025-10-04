---@diagnostic disable: undefined-global
return {
  'mason-org/mason-lspconfig.nvim',
  commit = '155eac5d8609a2f110041f8ac3491664cc126354',
  opts = {
    ensure_installed = {
      -- Lua
      'stylua',
      'lua_ls',

      -- Rust
      'rust_analyzer',
    },
  },
  dependencies = {
    { 'mason-org/mason.nvim', version = '2.1.0', opts = {} },
    { 'neovim/nvim-lspconfig', version = '2.5.0' },
  },
  init = function()
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true })

    -- set any custom LSP configs here with `vim.lsp.config`
    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
          check = { command = 'clippy' },
        },
      },
    })
  end,
}
