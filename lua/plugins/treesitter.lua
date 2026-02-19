return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  commit = 'ecdae44baefeffceade8b0c752d80ececad28e76',
  build = ':TSUpdate',
  config = function()
    local filetypes = { 'lua', 'typescript', 'tsx', 'python', 'c', 'rust', 'go', 'ruby' }

    require('nvim-treesitter').install(filetypes)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
