if global.paused exit;

if (room == rm_game)
{
	layer_set_visible("ui_bottom_buttons", true);
}
else
{
	layer_set_visible("ui_bottom_buttons", false);
}

clock();