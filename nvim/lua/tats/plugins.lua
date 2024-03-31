local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add {
  'wbthomason/packer.nvim';
  'windwp/nvim-autopairs';
  {
    'catppuccin/nvim',
    as = 'catppuccin',
    after = 'lualine.nvim',
  };
  {
    'akinsho/bufferline.nvim',
    -- tag = '*',
    requires = 'nvim-tree/nvim-web-devicons'
  };
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  };
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' }
  };
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  };
  'glepnir/lspsaga.nvim';
  'jose-elias-alvarez/null-ls.nvim';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-cmdline';
  'hrsh7th/nvim-cmp';
  'L3MON4D3/LuaSnip';
  'saadparwaiz1/cmp_luasnip';
  'rafamadriz/friendly-snippets';
  {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  };
  'dinhhuy258/git.nvim';
  'lewis6991/gitsigns.nvim';
  'christoomey/vim-tmux-navigator';
  'numToStr/Comment.nvim';
  'nvim-tree/nvim-tree.lua';
  "lukas-reineke/indent-blankline.nvim";
  {
    "kylechui/nvim-surround",
    -- tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  };
  {
    "NeogitOrg/neogit",
    "sindrets/diffview.nvim",
  };
  'karb94/neoscroll.nvim';
}
