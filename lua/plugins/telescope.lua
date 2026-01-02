return {
  'nvim-telescope/telescope.nvim',
  commit = '4d0f5e0e7f69071e315515c385fab2a4eff07b3d',
  dependencies = { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
  opts = {
    defaults = {
      path_display = { 'filename_first' },
      mappings = {
        i = {
          ['<C-o>'] = require('telescope.actions').select_default,
        },
      },
    },
    pickers = {
      lsp_document_symbols = {
        sorting_strategy = 'ascending',
      },
    },
  },
  keys = {
    {
      'g/',
      function() require('telescope.builtin').live_grep() end,
      { noremap = true },
    },
    {
      '<leader>/',
      function() require('telescope.builtin').live_grep() end,
      { noremap = true },
    },
    {
      '<C-e>',
      function() require('telescope.builtin').buffers({ sort_mru = true, ignore_current_buffer = true }) end,
      { noremap = true },
    },
    {
      '<leader>b',
      function() require('telescope.builtin').buffers({ sort_mru = true, ignore_current_buffer = true }) end,
      { noremap = true },
    },
    {
      '<leader>s',
      function()
        require('telescope.builtin').lsp_document_symbols({
          symbols = {
            'File',
            'Module',
            'Namespace',
            'Package',
            'Class',
            'Method',
            -- 'Property',
            -- 'Field',
            'Constructor',
            'Enum',
            'Interface',
            'Function',
            -- 'Variable',
            -- 'Constant',
            -- 'String',
            -- 'Number',
            -- 'Boolean',
            -- 'Array',
            'Object',
            -- 'Key',
            -- 'Null',
            -- 'EnumMember',
            'Struct',
            'Event',
            'Operator',
            'TypeParameter',
          },
        })
      end,
      { noremap = true },
    },
    {
      '<leader>d',
      function()
        require('telescope.builtin').diagnostics({
          bufnr = 0,
        })
      end,
      { noremap = true },
    },
    {
      '<leader>pd',
      function() require('telescope.builtin').diagnostics() end,
      { noremap = true },
    },
    {
      '<leader><C-p>d',
      function() require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.ERROR }) end,
      { noremap = true },
    },
    {
      '<leader>gs',
      function() require('telescope.builtin').git_status() end,
      { noremap = true },
    },
    {
      '<leader>m',
      function() require('telescope.builtin').marks({ mark_type = 'global' }) end,
      { noremap = true },
    },
  },
}
