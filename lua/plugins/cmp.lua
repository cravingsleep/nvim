return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets', commit = '6cd7280adead7f586db6fccbd15d2cac7e2188b9' },
  version = '1.9.1',
  opts = {
    keymap = { preset = 'enter' },
    signature = { enabled = true, window = { show_documentation = false } },
    appearance = {
      nerd_font_variant = 'mono',
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = 'prefer_rust_with_warning' },
  },
  opts_extend = { 'sources.default' },
}
