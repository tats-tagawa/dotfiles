local options = {
  autoindent = true,
  backspace = 'indent,eol,start',
  clipboard = 'unnamedplus',
  completeopt = {'menu','menuone','noselect'},
  encoding = 'utf-8',
  errorbells = false,
  expandtab = true,
  fileencoding = 'utf-8',
  fileformats = 'unix,dos,mac',
  hidden = true,
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  number = true,
  relativenumber = true,
  scrolloff = 10,
  shiftwidth = 2,
  showmatch = true,
  smartcase = true,
  softtabstop = 2,
  tabstop = 2,
  termguicolors = true,
  wildignore = vim.opt.wildignore + '*.png,*.jpg,*.gif,*.DS_Store,*.swp,*.zip,*.dmg,*.tff',
  wildmode = 'longest,list,full',
}
for k, v in pairs(options) do
  vim.opt[k] = v
end

