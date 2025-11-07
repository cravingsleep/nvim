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

      -- python
      'basedpyright',
    },
  },
  dependencies = {
    { 'mason-org/mason.nvim', version = '2.1.0', opts = {} },
    { 'neovim/nvim-lspconfig', version = '2.5.0' },
  },
  init = function()
    -- install formatters since lspconfig can not do them all
    local registry = require('mason-registry')
    local wanted_tools = { 'ruff' }

    for _, tool in ipairs(wanted_tools) do
      local pkg = registry.get_package(tool)
      if not pkg:is_installed() then
        print('Mason: installing ' .. tool .. '...')
        pkg:install()
      end
    end

    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true })
    vim.keymap.set('n', 'g.', vim.lsp.buf.code_action, { noremap = true })
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { noremap = true })

    -- turn on clippy for rust
    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
          check = { command = 'clippy' },
        },
      },
    })

    -- configure lua to know about neovim vim types
    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
          hint = {
            enable = true,
          },
        },
      },
    })
  end,
}
