global.paused				= !global.paused;

if (global.puzzle)
{
	global.puzzle_paused	= !global.puzzle_paused;
	global.fading			= true;
	actual_fade				= global.fade;
	
	layer_set_visible("ui_pause_menu", global.puzzle_paused);
}
else
{
	layer_set_visible("ui_pause_menu", global.paused);
}

