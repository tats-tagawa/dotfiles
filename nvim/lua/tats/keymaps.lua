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
set_key("n", "<leader>ee", ":e!<cr>")

-- don't join with <s-j>
set_key("n", "<s-j>", "<nop>")

-- move current line up/down
set_key("n", "-", "ddp")
set_key("n", "_", "ddkP")

-- don't skip wrapped lines unless there is a count (ex. 3j)
local expr = {silent = true, expr = true, remap = false}
set_key('', 'j', "v:count ?  'j' : 'gj'", expr)
set_key('', 'k', "v:count ?  'k' : 'gk'", expr)

-- trigger highlight
set_key('n', '<leader>no', ':noh<cr>')

----------------
--- toggles ----
----------------

set_key("n", "<leader>n", ":set relativenumber!<cr>")

----------------
--- buffer ----
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

-------------------
------ panes ------
-------------------

set_key("n", "C-J", "<C-W><C-J>")
set_key("n", "C-K", "<C-W><C-K>")
set_key("n", "C-L", "<C-W><C-L>")
set_key("n", "C-H", "<C-W><C-H>")

-------------------
--- navigation ----
-------------------

-- nvim-tree
set_key("n", "<leader>nt", ":NvimTreeToggle<cr>", opts)

-- change pwd to opened file
set_key("n", "<leader>cd", ":cd %:h<cr>", opts)
