return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  commit = '99bd52ba56a4b7c9a8cc50a6140180755e76fac6',
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
