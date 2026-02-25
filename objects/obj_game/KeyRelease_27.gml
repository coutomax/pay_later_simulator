/// @description Insert description here
// You can write your code in this editor

global.paused				= !global.paused;

if (global.puzzle)
{
	global.puzzle_paused	= !global.puzzle_paused;
	
	layer_set_visible("ui_pause_menu", global.puzzle_paused);
}
else
{
	layer_set_visible("ui_pause_menu", global.paused);
}

