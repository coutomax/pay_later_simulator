if (global.puzzle)
{
	scr_fader(0.03, 0, 0.5);
}

if global.paused exit;

if (room == rm_game)
{
	layer_set_visible("ui_bottom_buttons", true);
}
else
{
	layer_set_visible("ui_bottom_buttons", false);
}

if (global.new_game)
{
	scr_fader(0.03, 0, 1);
}

day_editor();
money_editor();
clock_formatter();