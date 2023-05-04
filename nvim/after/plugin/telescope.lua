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
    }
  }
})
set_key('n', '<leader>ff', builtin.find_files, {})
set_key('n', '<leader>fg', builtin.live_grep, {})
set_key('n', '<leader>fb', builtin.buffers, {})
set_key('n', '<leader>fh', builtin.help_tags, {})
