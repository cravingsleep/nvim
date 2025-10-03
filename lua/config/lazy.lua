-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- add line numbers
vim.opt.number = true
-- make the line numbers the cursor is not on relative to the cursor
vim.opt.relativenumber = true
-- make search smarter, avoid case only if it is in the search query
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- connect yank with the system clipboard
vim.opt.clipboard = "unnamedplus"
-- highlight the yanked text for 200ms
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})
-- disable netrw so we can use neotree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- enable 24 bit colour
vim.opt.termguicolors = true

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "dracula" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

