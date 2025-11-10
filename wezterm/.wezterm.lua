-- ╭──────────────────────────────────────────────────────────╮
-- │ WezTerm Configuration - Dark+ (JetBrainsMono Nerd Font)  │
-- ╰──────────────────────────────────────────────────────────╯

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ╭───────────────────────────────╮
-- │ Font Configuration            │
-- ╰───────────────────────────────╯
config.font = wezterm.font_with_fallback({
  "JetBrainsMono Nerd Font",
  "JetBrains Mono",
  "MesloLGS Nerd Font Mono",
  "Menlo",
})
config.font_size = 13.0
config.line_height = 1.2
config.underline_thickness = "200%"
config.underline_position = -2

-- ╭───────────────────────────────╮
-- │ Color Scheme (favorites list) │
-- ╰───────────────────────────────╯
-- Favorites:
-- Atom, Batman, Ayu Dark (Gogh), Blue Matrix, Classic Dark (base16)
-- Dark Flat, Dark Ocean (terminal.sexy), Dark+, darkmatrix, darkermatrix
-- Default (dark) (terminal.sexy)
-- Dracula (Official), Dracula (Gogh)
-- Github Dark, Github Dark (Gogh), Google Dark (base16)
-- Hacktober, MaterialDark, MaterialDarker, MaterialOcean, matrix
-- One Dark (Gogh)
-- Seti, Spiderman, Squirrelsong Dark, The Hulk, Tokyo Night, Tokyo Night Moon, Twilight
-- Twilight (dark) (terminal.sexy)
-- Vs Code Dark+ (Gogh)
config.color_scheme = "Dark+"

config.colors = {
  foreground = "#D4D4D4",
  background = "#1E1E1E",
  cursor_bg = "#AEAFAD",
  cursor_border = "#AEAFAD",
  cursor_fg = "#1E1E1E",
  selection_bg = "#264F78",
  selection_fg = "#D4D4D4",

  ansi = {
    "#000000", "#CD3131", "#0DBC79", "#E5E510",
    "#2472C8", "#BC3FBC", "#11A8CD", "#E5E5E5",
  },
  brights = {
    "#666666", "#F14C4C", "#23D18B", "#F5F543",
    "#3B8EEA", "#D670D6", "#29B8DB", "#E5E5E5",
  },

  tab_bar = {
    background = "#1E1E1E",
    active_tab = {
      bg_color = "#007ACC", -- VS Code blue highlight
      fg_color = "#FFFFFF",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#2D2D2D",
      fg_color = "#AAAAAA",
    },
    inactive_tab_hover = {
      bg_color = "#333333",
      fg_color = "#FFFFFF",
    },
    new_tab = {
      bg_color = "#1E1E1E",
      fg_color = "#FFFFFF",
    },
    new_tab_hover = {
      bg_color = "#333333",
      fg_color = "#FFFFFF",
      italic = true,
    },
    inactive_tab_edge = "#252526",
  },
}

-- ╭───────────────────────────────╮
-- │ Window & Tab Bar Appearance   │
-- ╰───────────────────────────────╯
config.window_decorations = "TITLE|RESIZE" -- Tabs below title bar
config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.tab_max_width = 45

config.window_frame = {
  font = wezterm.font { family = "JetBrainsMono Nerd Font", weight = "Regular" },
  font_size = 13.0,
  active_titlebar_bg = "#1E1E1E",
  inactive_titlebar_bg = "#252526",
  border_bottom_height = "0.25cell", -- Extra click area under tabs
}

config.tab_bar_style = {
  new_tab = wezterm.format({ { Text = " + " } }),
  new_tab_hover = wezterm.format({ { Text = " + " } }),
}

config.window_padding = {
  left = 6,
  right = 6,
  top = 4,
  bottom = 2,
}


-- ╭───────────────────────────────╮
-- │ Effects & Performance Tweaks  │
-- ╰───────────────────────────────╯
config.macos_window_background_blur = 20
config.window_background_opacity = 0.9
config.text_background_opacity = 1.0

config.animation_fps = 120
config.max_fps = 120
config.front_end = "WebGpu" -- smoother animations and tab fades
-- ╭───────────────────────────────╮
-- │ Dynamic Tab Titles (Directory)│
-- ╰───────────────────────────────╯
wezterm.on("format-tab-title", function(tab)
  local cwd = ""
  local pane = tab.active_pane

  if pane.current_working_dir then
    cwd = tostring(pane.current_working_dir)
    cwd = cwd:gsub("^file://", "")
    cwd = cwd:gsub("%%(%x%x)", function(h) return string.char(tonumber(h, 16)) end)
    cwd = cwd:gsub("[/\\]+$", "")
    cwd = cwd:match("([^/\\]+)$") or cwd
  end

  local title = string.format("%d: %s", tab.tab_index + 1, cwd or "?")
  if tab.is_active then
    title = "★ " .. title
  end
  return { { Text = " " .. title .. " " } }
end)

-- ╭───────────────────────────────╮
-- │ Return Configuration          │
-- ╰───────────────────────────────╯
return config