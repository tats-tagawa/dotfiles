-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local set_key = vim.keymap.set

set_key("n", "<leader>w", ":w<cr>", opts)
set_key("n", "<leader>q", ":q<cr>", opts)

-- don't join with <s-j>
set_key("n", "<s-j>", "<nop>", opts)

-- don't skip wrapped lines unless there is a count (ex. 3j)
local expr = { silent = true, expr = true, remap = false }
set_key("", "j", "v:count ?  'j' : 'gj'", expr)
set_key("", "k", "v:count ?  'k' : 'gk'", expr)

-- set relativenumber
set_key("n", "<leader>n", ":set relativenumber!<cr>", opts)