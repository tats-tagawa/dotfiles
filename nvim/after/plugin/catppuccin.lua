require('catppuccin').setup({
  flavour = 'mocha',
  color_overrides = {
    mocha = {
      base = '#222222',
      surface1 = '#777777',
    }
  }
})

vim.cmd.colorscheme 'catppuccin'
