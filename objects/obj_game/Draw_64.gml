if (global.fade > 0)
{
	draw_set_alpha(global.fade);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_width(), false);
	draw_set_alpha(1);
}