require('catppuccin').setup({
  flavour = 'mocha',
  styles = {
      comments = {'italic'},
    },
  color_overrides = {
    mocha = {
      surface1 = '#555555',
    }
  }
})

vim.cmd.colorscheme 'catppuccin'
