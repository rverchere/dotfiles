-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = "Nord (Gogh)"
config.font = wezterm.font("FiraMono Nerd Font")
config.font_size = 12.0
-- For demos
-- config.color_scheme = 'Github'
-- config.font_size = 16.0

-- Disable fancy tab style
config.use_fancy_tab_bar = false

-- Hide the tab bar if there is only one tab
config.hide_tab_bar_if_only_one_tab = true

config.prefer_to_spawn_tabs = true

-- Set Background opacity
-- config.window_background_opacity = 0.99

-- and finally, return the configuration to wezterm
return config
