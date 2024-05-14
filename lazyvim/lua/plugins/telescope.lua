local colors = require("catppuccin.palettes").get_palette()
local TelescopeColor = {
  TelescopeMatching = { fg = colors.flamingo },
  TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

  TelescopePromptPrefix = { bg = colors.base },
  TelescopePromptNormal = { bg = colors.base },
  TelescopePromptBorder = { bg = colors.base, fg = colors.text },
  TelescopePromptTitle = { bg = colors.base, fg = colors.pink },

  TelescopeResultsNormal = { bg = colors.base },
  TelescopeResultsBorder = { bg = colors.base, fg = colors.text },
  TelescopeResultsTitle = { bg = colors.base, fg = colors.blue },

  TelescopePreviewNormal = { bg = colors.base },
  TelescopePreviewBorder = { bg = colors.base, fg = colors.text },
  TelescopePreviewTitle = { bg = colors.base, fg = colors.green },
}

for hl, col in pairs(TelescopeColor) do
  vim.api.nvim_set_hl(0, hl, col)
end

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        prompt_position = "top",
        preview_width = 0.6,
      },
      sorting_strategy = "ascending",
      winblend = 0,
      file_ignore_patterns = {
        "node_modules/.*",
        ".git/.*",
        ".github/.*",
        ".gitignore",
        "Backups/.*",
        ".circleci.*",
        "package.*",
      }
    },
  },
}
