local builtin = require("telescope.builtin")
local set_key = vim.keymap.set

set_key("n", "<leader>ff", builtin.find_files, {})
set_key("n", "<leader>fg", builtin.live_grep, {})
set_key("n", "<leader>fb", builtin.buffers, {})
set_key("n", "<leader>fh", builtin.help_tags, {})