return {
  'nvim-telescope/telescope.nvim',
  commit = DepsCommits.telescope,
  dependencies = { 'nvim-lua/plenary.nvim', commit = DepsCommits.plenary },
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
      '<leader>gs',
      function() require('telescope.builtin').git_status() end,
      { noremap = true },
    },
  },
}
