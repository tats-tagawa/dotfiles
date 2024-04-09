local colors = require("catppuccin.palettes").get_palette()
local TelescopeColor = {
  TelescopeMatching = { fg = colors.flamingo },
  TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

  TelescopePromptPrefix = { bg = colors.surface0 },
  TelescopePromptNormal = { bg = colors.surface0 },
  TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
  TelescopePromptTitle = { bg = colors.surface0, fg = colors.pink },

  TelescopeResultsNormal = { bg = colors.mantle },
  TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
  TelescopeResultsTitle = { bg = colors.mantle, fg = colors.blue },

  TelescopePreviewNormal = { bg = colors.mantle },
  TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
  TelescopePreviewTitle = { bg = colors.mantle, fg = colors.green },
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
    },
  },
}
