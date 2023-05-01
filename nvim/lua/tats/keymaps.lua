-- set leader to <Space>
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local set_key = vim.keymap.set

set_key("n", "<leader>r", ":luafile %<cr>", opts)

-- use JK as escape
set_key("i", "jk", "<esc>", opts)
set_key("v", "jk", "<esc>", opts)

-- save and quit shortcuts
set_key("n", "<leader>w", ":w<cr>", opts)
set_key("n", "<leader>q", ":wq<cr>", opts)

----------------
---- buffer ----
----------------

-- delete buffer
set_key("n", "<leader>dd", ":bd<cr>", opts)

-- delete buffer but don't close pane
set_key("n", "<leader>db", ":bp<bar>sp<bar>bn<bar>bd<cr>", opts)

-- switch between buffers
set_key("n", "<s-k><s-k>", ":bnext<cr>", opts)
set_key("n", "<s-j><s-j>", ":bprev<cr>", opts)

-- go to previous buffer
set_key("n", "<C-h>", ":e #<cr>", opts)

-- netrw
set_key("n", "<leader>pv", vim.cmd.Ex, opts)
