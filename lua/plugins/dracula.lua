return {
  'catppuccin/nvim',
  name = 'catppuccin',
  commit = 'edefef779ab08ce1a4a404713e3012b0d202bd35',
  priority = 1000,
  opts = {
    -- Give Flash's match extmarks a visible slate background while keeping
    -- Catppuccin's existing lavender/orange foregrounds.
    custom_highlights = function(colors)
      return {
        FlashMatch = { fg = colors.lavender, bg = colors.surface2 },
        FlashCurrent = { fg = colors.peach, bg = colors.surface2 },
        FlashLabel = { fg = '#fff1c1', bg = colors.surface2, style = { 'bold' } },
      }
    end,
    integrations = {
      lualine = {
        latte = {
          normal = {
            -- A less saturated blue for NORMAL's `a` section (also used by `z`).
            a = { bg = '#6f889f' },
          },
        },
      },
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.o.background = 'light'
    vim.cmd([[colorscheme catppuccin-nvim]])
  end,
}
