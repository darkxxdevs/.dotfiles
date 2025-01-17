local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrainsMono NF Semibold", {
	italic = false,
})

config.color_scheme = "mountain"

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
