return {
  'Mofiqul/dracula.nvim',
  commit = 'ae752c13e95fb7c5f58da4b5123cb804ea7568ee',
  lazy = false,
  priority = 1000,
  config = function()
    -- set the colorscheme across the whole of nvim
    vim.cmd('colorscheme dracula')
  end,
}
