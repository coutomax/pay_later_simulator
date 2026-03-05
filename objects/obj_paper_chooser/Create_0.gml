visible			= false;

escalaX			= image_xscale;
escalaY			= image_yscale;

xscale			= escalaX;
yscale			= escalaY;

switch (check_type)
{
	case "check":
		image_index = 0;
	break;
	case "cancel":
		image_index = 1;
	break;
	case "alert":
		image_index = 2;
	break;
}

function collision_condition (condition, obj, snd)
{

	if (condition)
	{
		global.puzzle_points++;				
		audio_play_sound(snd, 0, false, 0.3);
	}
	else
	{
		audio_play_sound(snd_wrong, 0, false, 0.3);
	}
	
	instance_destroy(obj);
	global.drag_id		= noone;
}