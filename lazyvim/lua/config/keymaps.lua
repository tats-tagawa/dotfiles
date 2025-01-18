-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
local opts = { noremap = true, silent = true }
local opt = vim.opt
local set_key = vim.keymap.set

-- don't join with <s-j>
set_key("n", "<s-j>", "<nop>", opts)

-- don't skip wrapped lines unless there is a count (ex. 3j)
local expr = { silent = true, expr = true, remap = false }
set_key("", "j", "v:count ?  'j' : 'gj'", expr)
set_key("", "k", "v:count ?  'k' : 'gk'", expr)

-- set relativenumber
set_key("n", "<leader>n", ":set relativenumber!<cr>", opts)

-- center when <c-d> <c-u>
set_key("n", "<c-u>", "<c-u>zz", opts)
set_key("n", "<c-d>", "<c-d>zz", opts)

-- swap : and ;
-- set_key("n", ";", ":", opts)
-- set_key("n", ":", ";", opts)

  -- {
    -- { "<leader>t", group = "tabspace" },
    -- { "<leader>t2", <function 1>, desc = "Set tab as 2 spaces" },
    -- { "<leader>t4", <function 1>, desc = "Set tab as 4 spaces" },
  -- }
wk.add({
  {"<leader>t", group = "tabspace" },
  {"<leader>t2",
    function()
      opt.softtabstop = 2
      opt.tabstop = 2
      opt.shiftwidth = 2
      vim.print("Tab set as 2 spaces")
    end,
    desc = "Set tab as 2 spaces"
  },
  {"<leader>t4",
    function()
      opt.softtabstop = 4
      opt.tabstop = 4
      opt.shiftwidth = 4
      vim.print("Tab set as 4 spaces")
    end,
    desc = "Set tab as 4 spaces"
  },
})
