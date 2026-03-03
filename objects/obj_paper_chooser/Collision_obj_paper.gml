show_debug_message(other.data)

if (global.drag_id != noone)
{
	switch (check_type)
	{
		case "check":
			if (other.data.valid && other.data.status == 1)
			{
				global.puzzle_points++;
				instance_destroy(other);
				global.drag_id = noone;
			}
		break;
		case "cancel":
			if (other.data.status == 2)
			{
				global.puzzle_points++;
				instance_destroy(other);
				global.drag_id = noone;
			}
		break;
		case "alert":
			if (other.data.valid && other.data.status == 0)
			{
				global.puzzle_points++;
				instance_destroy(other);
				global.drag_id = noone;
			}
		break;
	}
}

var	_papers			= instance_number(obj_paper);

if (_papers == 0)
{
	global.puzzle			= false;
	global.paused			= false;
	global.puzzle_paused	= false;
	global.fading			= false;
}