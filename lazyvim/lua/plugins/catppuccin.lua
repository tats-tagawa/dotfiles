return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      styles = {
        comments = { "italic" },
      },
      color_overrides = {
        mocha = {
          surface1 = "#555555",
        },
      },
      custom_highlights = function(colors)
        return {
          LineNrAbove = { fg = colors.overlay0 },
          LineNr = { fg = colors.subtext1, },
          LineNrBelow = { fg = colors.overlay0 },
        }
      end
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
