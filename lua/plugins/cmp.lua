return {
  {
    'hrsh7th/nvim-cmp',
    commit = 'b5311ab3ed9c846b585c0c15b7559be131ec4be9',
    event = 'InsertEnter',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp', commit = 'bd5a7d6db125d4654b50eeae9f5217f24bb22fd3' },
      { 'hrsh7th/cmp-buffer', commit = 'b74fab3656eea9de20a9b8116afa3cfc4ec09657' },
      { 'hrsh7th/cmp-path', commit = 'c642487086dbd9a93160e1679a1327be111cbc25' },
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({
        snippet = {
          -- No snippet engine
          expand = function(args)
            -- do nothing
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          {
            name = 'nvim_lsp',
            -- I personally never use the snippets reccommended by the LSP so I am
            -- disabling them so the autocomplete is more sparse and relevant
            entry_filter = function(entry) return entry.completion_item.insertTextFormat ~= 2 end,
          },
        }, {
          { name = 'buffer' },
        }),
      })
    end,
  },
}
