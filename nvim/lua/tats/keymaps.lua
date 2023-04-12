local builtin = require("telescope.builtin")

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

-- buffer navigation
set_key("n", "<leader>W", ":bd<cr>", opts)
set_key("n", "<s-j><s-j>", ":bnext<cr>", opts)
set_key("n", "<s-k><s-k>", ":bprev<cr>", opts)
set_key("n", "<C-h>", ":e #<cr>", opts)

-- telescope
set_key("n", "<leader>ff", builtin.find_files, {})
set_key("n", "<leader>fg", builtin.live_grep, {})
set_key("n", "<leader>fb", builtin.buffers, {})
set_key("n", "<leader>fh", builtin.help_tags, {})

