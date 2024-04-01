-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable autoformat
vim.g.autoformat = false

local opt = vim.opt

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
