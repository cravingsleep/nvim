return {
  {
    'hrsh7th/nvim-cmp',
    commit = 'b5311ab3ed9c846b585c0c15b7559be131ec4be9',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip', commit = '73813308abc2eaeff2bc0d3f2f79270c491be9d7' },
      { 'hrsh7th/cmp-nvim-lsp', commit = 'bd5a7d6db125d4654b50eeae9f5217f24bb22fd3' },
      { 'hrsh7th/cmp-buffer', commit = 'b74fab3656eea9de20a9b8116afa3cfc4ec09657' },
      { 'hrsh7th/cmp-path', commit = 'c642487086dbd9a93160e1679a1327be111cbc25' },
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          expand = function(args) require('luasnip').lsp_expand(args.body) end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-y>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          {
            name = 'nvim_lsp',
          },
        }, {
          { name = 'buffer' },
        }),
      })
    end,
  },
}
