if global.paused exit;

if (room == rm_game)
{
	layer_set_visible("ui_bottom_buttons", true);
}
else
{
	layer_set_visible("ui_bottom_buttons", false);
}

if (global.fading)
{
	if (global.fade < 1)
	{
		global.fade			+= fade_speed;
	}
	
	if (global.fade > 1)
	{
		global.fade			= 1;
		global.fading		= false;
	}
}
else
{
	if (global.fade > 0)
	{
		global.fade			-= fade_speed;
	}
	
	if(global.fade < 0)
	{
		global.fade			= 0;
	}
}

day_editor();
money_editor();
clock_formatter();