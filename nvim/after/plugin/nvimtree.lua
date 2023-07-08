-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  view = {
    width = 70,
    float = {
      enable = true,
      quit_on_focus_loss = false,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 70,
        height = 50,
        row = 1,
        col = 1,
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
