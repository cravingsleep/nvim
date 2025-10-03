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

## Basics

- Relative line numbers are on
- The system clipboard is connected to yank
- Search uses smartcase
- The theme is [dracula](https://github.com/Mofiqul/dracula.nvim)

## Recommended Key Swaps

Using [karabiner](https://karabiner-elements.pqrs.org/) it is recommend to change
the Caps Lock key to Ctrl and adding these two complex key replacements:

- `<Ctrl-j>` is `<DownArrow>`
- `<Ctrl-k>` is `<UpArrow>`

This lets you navigate pop up menus without having to exit their search bar quickly.

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
