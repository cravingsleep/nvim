# Neovim Config

A simple minimalist neovim config designed to stay out your way and keep things vim.

## Installation

Just git clone into `~/.config/nvim`.

**This distro only supports OSX.**

## Dependencies

- [neovim](https://neovim.io/) >= 0.11.4
- [git](https://git-scm.com/)
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md)
- [C compiler](https://docs.rs/cc/latest/cc/#compile-time-requirements) (provided if Xcode is installed)
- tar (provided by default on OSX)
- curl (provided by default on OSX)

## Vim Basics

- Relative line numbers are on
- The system clipboard is connected to yank
- Search uses smartcase
- The theme is [dracula](https://github.com/Mofiqul/dracula.nvim)
- The leader key is the spacebar
- Saving a file is bound to `<leader>w`
- Exiting terminal mode can be done with `jj`

## Recommended Key Swaps

Using [karabiner](https://karabiner-elements.pqrs.org/) it is recommend to change
the Caps Lock key to Ctrl and adding these two complex key replacements:

- `<Ctrl-j>` is `<DownArrow>`
- `<Ctrl-k>` is `<UpArrow>`

This lets you navigate pop up menus without having to exit their search bar quickly.

## Keymaps

See all the keymaps in this [complete list](./keymap.md)

## Package Management

The [lazy](https://github.com/folke/lazy.nvim) package manager is used to install the
various plugins.

Every single package and dependency is pegged to a constant tag or commit. This is to
avoid any packages from updating (through `:Lazy sync`) and potentially breaking. It
also protects against a package being potentially maliciously updated.

This means any updates to packages must be done in code first (by bumping the tag or
changing the commit) and then running `:Lazy sync`.

For packages which are dependencies of multiple packages notice the global `DepsCommits`
in [./init.lua](./init.lua). This stores the commits to use for those packages in one
place which can then be imported and referenced. This keeps the source of truth for
those dependencies in one place; allowing easy updating and avoids multiple potential
versions.

## Plugins

### Tabs

Tabs are made prettier with [barbar](https://github.com/romgrk/barbar.nvim). The only QoL
change to the default settings is turning off the animations.

See the [keymaps](./keymap.md#tabs)

### Status Line

The status line at the bottom of the editor is provided by [lualine](https://github.com/nvim-lualine/lualine.nvim).

The status line displays the mode, git branch, lsp status, filesize and cursor position.

### Treesitter

Treesitting is provided by [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/tree/main) which allows
for special syntax highlighting and code navigation.

The list of supported languages is: `{ 'lua', 'typescript', 'typescriptreact', 'python', 'c', 'rust' }` because these are
what I work on but they can be added to [here](./lua/plugins/treesitter.lua) fairly easily. Running `:TSUpdate` every now
and again is also wise to keep the definitions fresh.

### Git Integration

The gutter shows where changes to the file have been made with green for addition, blue for modification and red for deletion.

See the [keymaps](./keymap.md#git)

### File Finder

The file finder is provided by [fzf-lua](https://github.com/ibhagwan/fzf-lua). The filename should appear first when searching
in deeply nested folders and common folders like `.git` and `node_modules` are automatically ignored.

`fzf-lua` also provides the ability to look at LSP document symbols.

See the [keymaps](./keymap.md#file-finder)

### File Tree

The file tree uses [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) and both imitates and improves on netrw by appearing
on top of the current buffer. It always opens focused on the current open buffer.

See the [keymaps](./keymap.md#file-tree)

### LSP

LSPs are managed by [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim/tree/main) which ensures the correct LSPs are
installed and automatically enables them. It also manages packages for formatters too.

The actual work for communicating with the LSP and reporting the diagnostics is done by the built-int `vim.lsp`.

The UI for showing LSP definition and references is handled by [glance](https://github.com/DNLHC/glance.nvim). This shows up as a
detached window with the files on the left and a preview window on the right.

See the [keymaps](./keymap.md#lsp)

### Formatting

Formatting is handled by [conform](https://github.com/stevearc/conform.nvim) which sets up format on save and links the right formatters
to the right filetypes. See that config [here](./lua/plugins/conform.lua).

See the [keymaps](./keymap.md#formatting)
