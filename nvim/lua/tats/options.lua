local options = {
  autoindent = true,
  clipboard = "unnamedplus",
  errorbells = false,
  expandtab = true,
  hidden = true,
  incsearch = true,
  number = true,
  relativenumber = true,
  shiftwidth = 2,
  smartcase = true,
  softtabstop = 2,
  tabstop = 2,
  termguicolors = true,
  completeopt = {'menu','menuone','noselect'},
  colorscheme = catppuccin
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd.colorscheme 'catppuccin'
