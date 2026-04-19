local wezterm = require 'wezterm'
local act = wezterm.action

return {

  -- Font
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 14.0,
  line_height = 0.95,

  color_scheme = "Everblush (Gogh)",
  window_background_opacity = 0.95,
  macos_window_background_blur = 20,

  front_end = "OpenGL",

  -- use_resize_increments = true,

  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },

  adjust_window_size_when_changing_font_size = false,

  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  enable_scroll_bar = false,
  enable_tab_bar = false,
  scrollback_lines = 35000,

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