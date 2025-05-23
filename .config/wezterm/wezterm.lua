local wezterm = require("wezterm")
local config = {}

wezterm.on("gui-startup", function()
	local _, _, window = wezterm.mux.spawn_window({})
	window:gui_window():set_position(0, 0)
	window:gui_window():toggle_fullscreen()
end)

config = {
	adjust_window_size_when_changing_font_size = false,
	automatically_reload_config = true,
	check_for_updates = false,
	color_scheme = "GruvboxDark",
	default_cursor_style = "BlinkingBlock",
	-- font = wezterm.font("FiraCode Nerd Font"),
	font = wezterm.font("Iosevka Nerd Font"),
	font_size = 14,
	hide_tab_bar_if_only_one_tab = true,
	keys = {
		{ key = "[", mods = "CTRL|ALT", action = wezterm.action.ActivateTabRelative(-1) },
		{ key = "]", mods = "CTRL|ALT", action = wezterm.action.ActivateTabRelative(1) },
	},
	native_macos_fullscreen_mode = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}

return config
