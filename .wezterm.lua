-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.colors = {
	-- The default text color
	foreground = "dec0b4",
	-- The default background color
	background = "#170f0b",

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#dec0b4",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "black",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = "#52ad70",

	-- the foreground color of selected text
	selection_fg = "black",
	-- the background color of selected text
	selection_bg = "#fffacd",

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = "#222222",

	-- The color of the split lines between panes
	split = "#444444",

	ansi = {
		"#241914",
		"#2f211b",
		"#6f2200",
		"#5f473b",
		"#826253",
		"#ac836f",
		"#d5ac98",
		"#ede0da",
	},
	brights = {
		"#c3b8e5",
		"#d3e192",
		"#92c3ae",
		"#c4bddb",
		"#cf95b4",
		"#b5bd90",
		"#efcebf",
		"#8bbba6",
	},

	inactive_tab_edge = "#575757",
}

config.window_background_opacity = 0.8

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	-- font = wezterm.font({ family = "Roboto", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 14.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#333333",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#333333",
}

config.initial_cols = 120
config.initial_rows = 28
config.font_size = 18

-- Finally, return the configuration to wezterm:
return config
