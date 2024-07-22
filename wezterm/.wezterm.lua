local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 12

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.color_scheme = "Catppuccin Mocha"

-- config.animation_fps = 1
config.cursor_blink_rate = 0 -- disabled
config.default_cursor_style = "SteadyBlock"

config.check_for_updates = true
config.check_for_updates_interval_seconds = 86400

config.warn_about_missing_glyphs = true

config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
    left = "0.5cell",
    right = "0.5cell",
    top = "0.25cell",
    bottom = "0.25cell",
}

return config
