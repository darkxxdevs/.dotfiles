local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrains Mono NF semiBold")

-- config.color_scheme = "Batman"
config.color_scheme = "Sequoia Moonlight"

config.colors = {
	background = "#0a0b0c",
	foreground = "#cccccc",
}

-- config.harfbuzz_features = {
-- 	"calt=0",
-- }

config.font_size = 10.6

config.enable_tab_bar = false

config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	top = 0,
	bottom = 0,
	left = 0,
	right = 0,
}

config.default_prog = { "/usr/bin/bash", "-l" }

return config
