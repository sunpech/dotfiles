-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Font
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14.0

-- For example, changing the color scheme:
config.color_scheme = "Github Dark"

-- and finally, return the configuration to wezterm
return config
