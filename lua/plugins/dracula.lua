return {
  'Mofiqul/dracula.nvim',
  commit = '041d923368d540a1e438989ce8f915628081a56a',
  lazy = false,
  priority = 1000,
  config = function()
    -- set the colorscheme across the whole of nvim
    vim.cmd('colorscheme dracula')
  end,
}
