local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrains Mono NF SemiBold", {
	italic = false,
})

config.color_scheme = "mountain"

config.colors = {
	background = "#0a0b0c",
	foreground = "#cccccc",
}

-- config.harfbuzz_features = {
-- 	"calt=0",
-- }

config.font_size = 9.4

config.enable_tab_bar = false

config.enable_wayland = false

config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	top = 4,
	bottom = 0,
	left = 4,
	right = 4,
}

config.default_prog = { "/usr/bin/fish", "-l" }

return config
