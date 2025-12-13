return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets', commit = '572f5660cf05f8cd8834e096d7b4c921ba18e175' },
  version = '1.8.0',
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
