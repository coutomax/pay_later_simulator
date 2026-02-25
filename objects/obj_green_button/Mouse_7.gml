event_inherited();

if (!global.paused)
{
	if (actions == "work" && !this_worked)
	{	
		this_worked			= !this_worked;
		global.worked		= true;
		var table = instance_create_layer(640, 460, "Instances", obj_table);
	}

	if (global.worked && global.on_the_table)
	{
		global.energy		-= 5;
		global.stress		+= 1;
	}

	if (global.energy == 85)
	{
		global.puzzle = true;
		global.fading = true;
		global.paused = !global.paused;
	
		var _object			= [];

		var _xpos			= 0;
		var _ypos			= 0;

		for (var i = 0; i < 6; i++)
		{
			_object[i]				= global.papers[i];
	
			if (_object[i]._id != 4 && _object[i]._id != 5)
			{
				for (var j = 0; j < 3; j++)
				{
					_object[i].status[j]._id			= irandom(2);
				}
			}
			else
			{
				_object[i].status[2]._id				= 2;
			}
	
			_xpos					= random_range(150, display_get_width() - 150);
			_ypos					= random_range(240, display_get_height() - 240);
	
			var _inst				= instance_create_layer(_xpos, _ypos, "Instances", obj_paper);
			_inst.sprite_index		= _object[i].sprite;
		
		}
	}
}