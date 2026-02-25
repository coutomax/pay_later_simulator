xscale		= lerp(xscale, escalaX, 0.1);
yscale		= lerp(yscale, escalaY, 0.1);

if (new_game && !global.fading)
{
	new_game = false;
	room_goto(0);
	layer_set_visible("ui_bars", true);
	layer_set_visible("ui_clock", true);
	layer_set_visible("ui_right_expansor", true);
	layer_set_visible("ui_start_menu", false);
			
	instance_activate_object(obj_check_box);
}