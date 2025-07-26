local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 256-color theme (choose one)
  { "vim-scripts/xoria256.vim" },

  -- Original plugins
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  {"rust-lang/rust.vim"},
  { "lewis6991/gitsigns.nvim" },
  { "numToStr/Comment.nvim" },
  { "simrat39/rust-tools.nvim" },
  { "saecki/crates.nvim", event = { "BufRead Cargo.toml" } },
})

-- Line numbers
vim.opt.number = true

-- For 256-color themes, disable termguicolors
vim.opt.termguicolors = false -- Important for 256-color compatibility
vim.cmd.colorscheme "xoria256"

