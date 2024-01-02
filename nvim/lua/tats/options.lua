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
  listchars = 'space:·,tab:->',
  showmode = false,
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

-- Change tabspace amount if not personal machine
local function get_hostname()
  local f = io.popen('/bin/hostname')
 local hostname = f:read('*a')
  f:close()
  hostname = string.gsub(hostname, '\n$', '')
  return hostname
end

if get_hostname() ~= 'Miranda.local' then
  options.softtabstop = 4
  options.tabstop = 4
  options.shiftwidth = 4
end

for k, v in pairs(options) do
  vim.opt[k] = v
end
