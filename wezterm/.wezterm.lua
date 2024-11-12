-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Font
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14.0

-- Color Scheme (favorites)
-- Atom, Batman, Blue Matrix, , Classic Dark (base16), Dark Ocean (terminal.sexy), Dark+, darkmatrix, darkermatrix
-- Default (dark) (terminal.sexy)
-- Github Dark, Github Dark (Gogh), Google Dark (base16)
-- Hacktober, MaterialDark, MaterialDarker, MaterialOcean, matrix
-- Seti, Spiderman, The Hulk, Tokyo Night, Tokyo Night Moon, Twilight
-- Twilight (dark) (terminal.sexy)
-- Vs Code Dark+ (Gogh)
config.color_scheme = "Seti"

-- Misc
-- config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
  font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
 }

-- and finally, return the configuration to wezterm
return config
