-- set leader to <Space>
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local set_key = vim.keymap.set

----------------
--- general ----
----------------

-- use JK as escape
-- set_key("i", "jk", "<esc>", opts)
-- set_key("v", "jk", "<esc>", opts)

-- save and quit shortcuts
set_key("n", "<leader>w", ":w<cr>", opts)
set_key("n", "<leader>q", ":q<cr>", opts)
set_key("n", "<leader>Q", ":qa<cr>", opts)

-- refresh file
set_key("n", "<leader>ee", ":e!<cr>", opts)

-- don't join with <s-j>
set_key("n", "<s-j>", "<nop>", opts)

-- don't skip wrapped lines unless there is a count (ex. 3j)
local expr = {silent = true, expr = true, remap = false}
set_key('', 'j', "v:count ?  'j' : 'gj'", expr)
set_key('', 'k', "v:count ?  'k' : 'gk'", expr)

-- trigger highlight
set_key('n', '<leader>no', ':noh<cr>', opts)

-- change text between _
set_key('n', 'c_', 'T_ct_')
-- delete text between _ and trailing _
set_key('n', 'd_', 'T_df_')

-- call mason
set_key("n", "<leader>ma", ":Mason<cr>", opts)

----------------
--- toggles ----
----------------

set_key("n", "<leader>n", ":set relativenumber!<cr>", opts)

----------------
---- buffer ----
----------------

-- delete buffer
set_key("n", "<leader>dd", ":bd<cr>", opts)

-- delete buffer but don't close window
set_key("n", "<leader>db", ":bp<bar>sp<bar>bn<bar>bd<cr>", opts)

-- switch between buffers
set_key("n", "<s-j><s-j>", ":bprev<cr>", opts)
set_key("n", "<s-k><s-k>", ":bnext<cr>", opts)

-- go to previous buffer
set_key("n", "<C-h>", ":e #<cr>", opts)

----------------
---- window ----
----------------

-- split window
set_key("n", "<leader>|", ":vsplit<cr>", opts)
set_key("n", "<leader>-", ":split<cr>", opts)

-- delete window
set_key("n", "<leader>dp", "<C-w>q", opts)

-------------------
--- navigation ----
-------------------

-- nvim-tree
set_key("n", "<leader>nt", ":NvimTreeToggle<cr>", opts)

-- change pwd to opened file
set_key("n", "<leader>cd", ":cd %:h<cr>", opts)
