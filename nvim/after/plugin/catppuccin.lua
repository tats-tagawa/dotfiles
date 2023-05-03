require('catppuccin').setup({
  flavour = 'mocha',
  color_overrides = {
    mocha = {
      surface1 = '#555555',
    }
  }
})

vim.cmd.colorscheme 'catppuccin'
