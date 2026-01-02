return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  commit = '36fcb4a4238928f0b627e1ab84ade0acc1facc2c',
  build = ':TSUpdate',
  config = function()
    local filetypes = { 'lua', 'typescript', 'typescriptreact', 'python', 'c', 'rust' }

    require('nvim-treesitter').install(filetypes)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
