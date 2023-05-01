local options = {
  autoindent = true,
  clipboard = 'unnamedplus',
  colorscheme = catppuccin,
  completeopt = {'menu','menuone','noselect'},
  encoding = 'utf-8',
  errorbells = false,
  expandtab = true,
  fileencoding = 'utf-8',
  hidden = true,
  hlsearch = true,
  incsearch = true,
  number = true,
  relativenumber = true,
  scrolloff = 10,
  shiftwidth = 2,
  smartcase = true,
  softtabstop = 2,
  tabstop = 2,
  termguicolors = true
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

