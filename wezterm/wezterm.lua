local wezterm = require 'wezterm'
local act = wezterm.action

return {

  -- Font
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 14.0,

  -- Appearance
  color_scheme = "Catppuccin Mocha",
  window_background_opacity = 0.92,
  macos_window_background_blur = 20,

  -- Renderer (OpenGL is more stable on macOS for this issue)
  front_end = "OpenGL",

  -- Remove padding
  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
  },

  -- Prevent weird resizing behavior
  adjust_window_size_when_changing_font_size = false,

  -- Clean UI
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  enable_scroll_bar = false,
  -- window_decorations = "RESIZE",

  default_cwd = wezterm.home_dir,

  keys = {
    {
      key = 'n',
      mods = 'CMD',
      action = act.SpawnCommandInNewWindow {
        cwd = wezterm.home_dir,
      },
    },
  },
}