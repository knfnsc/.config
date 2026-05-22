local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font_size = 14
config.font =
  wezterm.font('JetBrains Mono NF', { weight = 650 })
config.enable_tab_bar = false

config.window_padding = {
    left = 9,
    right = 9,
    top = 9,
    bottom = 9,
}

config.window_background_opacity = 0.95

return config
