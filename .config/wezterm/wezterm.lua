local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_decorations = "RESIZE",
  default_color_style = "BlinkingBar",
  color_scheme = "Nord (Gogh)"
}

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10


return config
