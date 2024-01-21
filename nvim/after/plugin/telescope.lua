local builtin = require('telescope.builtin')
local set_key = vim.keymap.set

require 'telescope'.setup({
  defaults = {
    file_ignore_patterns = {
      'tmux/plugins/*',
      '%.pdf',
      '%.mp3',
      '%.jpg',
      '%.png',
      '%.DS_Store*',
      '%.zip',
      '%.dmg',
    },
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
    },
    sorting_strategy = "ascending",
  }
})
set_key('n', '<leader>ff', builtin.find_files, {})
set_key('n', '<leader>fg', builtin.live_grep, {})
set_key('n', '<leader>fb', builtin.buffers, {})
set_key('n', '<leader>fh', builtin.help_tags, {})
set_key('n', '<leader>ft', builtin.treesitter, {})
set_key('n', '<leader>fo', builtin.oldfiles, {})
set_key('n', '<leader>fr', builtin.registers, {})
set_key('v', '<leader>fr', builtin.registers, {})
set_key('n', '<leader>fm', builtin.marks, {})
set_key('n', '<leader>fs', builtin.search_history, {})
set_key('n', '<leader>fc', builtin.command_history, {})
