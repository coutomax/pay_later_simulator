// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fader(fade_speed, limit_min, limit_max){
	if (limit_max > 1)
	{
		limit_max				= 1;
	}
	
	if (limit_min < 0)
	{
		limit_min				= 0;
	}
	
	if (global.fading)
	{
		if (global.fade < limit_max)
		{
			global.fade			+= fade_speed;
		}
	
		if (global.fade > limit_max)
		{
			global.fade			= limit_max;
			global.fading		= false;
		}
	}
	else
	{
		if (!global.puzzle)
		{
			if (global.fade > limit_min)
			{
				global.fade			-= fade_speed;
			}
	
			if(global.fade < 0)
			{
				global.fade			= 0;
				global.new_game		= false;
			}
		}
	}
}