---@diagnostic disable: need-check-nil
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable autoformat
vim.g.autoformat = false

local opt = vim.opt

local options = {
  backspace = "indent,eol,start",
  completeopt = { "menu", "menuone", "noselect" },
  encoding = "utf-8",
  errorbells = false,
  fileencoding = "utf-8",
  fileformats = "unix,dos,mac",
  fixendofline = false,
  hidden = true,
  hlsearch = true,
  incsearch = true,
  listchars = "space:␣,tab:» ,trail:𓏴,eol:↲",
  list = false,
  swapfile = false,
  showmatch = true,
  smartcase = true,
  softtabstop = 2,
  tabstop = 2,
  wildignore = opt.wildignore + "*.png,*.jpg,*.gif,*.DS_Store,*.swp,*.zip,*.dmg,*.tff",
  wildmode = "longest,list,full",
  wrap = true,
}

for k, v in pairs(options) do
  opt[k] = v
end

-- Change tabspace amount if not personal machine
local function get_hostname()
  local f = io.popen("/bin/hostname")
  local hostname = f:read("*a")
  f:close()
  hostname = string.gsub(hostname, "\n$", "")
  return hostname
end

if get_hostname() ~= "Miranda.local" then
  opt.softtabstop = 4
  opt.tabstop = 4
  opt.shiftwidth = 4
end
