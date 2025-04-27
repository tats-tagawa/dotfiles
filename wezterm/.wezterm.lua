local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font {
  family = 'IosevkaTerm Nerd Font',
  stretch = 'Normal',
  weight = 'Regular',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
}

config.font_size = 14

config.front_end = 'OpenGL'

config.window_decorations = 'RESIZE | MACOS_FORCE_DISABLE_SHADOW'

config.enable_tab_bar = false

return config
