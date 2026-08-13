return {
  'mason-org/mason-lspconfig.nvim',
  commit = '21c2a84ce368e99b18f52ab348c4c02c32c02fcf',
  opts = {
    ensure_installed = {
      -- Lua
      'stylua',
      'lua_ls',

      -- Rust
      'rust_analyzer',

      -- python
      'basedpyright',

      -- C
      'clangd',
    },
  },
  dependencies = {
    { 'mason-org/mason.nvim', version = '2.2.1', opts = {} },
    { 'neovim/nvim-lspconfig', version = '2.6.0' },
  },
  init = function()
    -- install formatters since lspconfig can not do them all
    local registry = require('mason-registry')
    local wanted_tools = { 'ruff', 'clang-format' }

    for _, tool in ipairs(wanted_tools) do
      local pkg = registry.get_package(tool)
      if not pkg:is_installed() then
        print('Mason: installing ' .. tool .. '...')
        pkg:install()
      end
    end

    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { noremap = true })

    -- turn on clippy for rust
    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
          check = { command = 'clippy' },
        },
      },
    })

    vim.lsp.config('vtsls', {
      settings = {
        typescript = {
          tsserver = {
            experimental = {
              enableProjectDiagnostics = true,
            },
          },
        },
      },
    })

    local gdscript_port = 6005
    -- local godot_pipe = '/tmp/godot.pipe'
    local godot_group = vim.api.nvim_create_augroup('GodotLsp', { clear = true })

    vim.api.nvim_create_autocmd('FileType', {
      group = godot_group,
      pattern = 'gdscript',
      callback = function(ev)
        local root = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, {
          upward = true,
          path = vim.api.nvim_buf_get_name(ev.buf),
        })[1]) or vim.uv.cwd()

        vim.lsp.start({
          name = 'Godot',
          cmd = vim.lsp.rpc.connect('127.0.0.1', gdscript_port),
          root_dir = root,
          bufnr = ev.buf,
          -- on_attach = function()
          --   if vim.v.servername ~= godot_pipe then
          --     pcall(vim.fn.serverstart, godot_pipe)
          --   end
          -- end,
        })
      end,
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
