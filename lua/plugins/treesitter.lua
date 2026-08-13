return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  commit = 'c9f9ed6c1892f629ea399f4ee7905f2686fa13f2',
  build = ':TSUpdate',
  config = function()
    local filetypes = { 'lua', 'typescript', 'tsx', 'python', 'c', 'rust', 'go', 'ruby', 'gdscript' }

    require('nvim-treesitter').install(filetypes)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
