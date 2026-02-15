function reset(){
	
	//boolean reset
	global.paused					= false;
	global.hasSave					= false;
	global.hadLunch					= false;
	global.hadDinner				= false;
	global.hadBreakfast				= false;
	global.hadSleep					= false;

	//numeric reset
	global.max_energy				= 100;
	global.max_stress				= 100;
	global.max_life					= 100;

	global.energy					= 100;
	global.stress					= 0;
	global.life						= 100;

	global.minutes					= 1;
	global.hours					= 1;

	global.day						= 1;
	global.week						= 1;
	global.month					= 1;
	global.year						= 1;

	global.x_size					= 0;
	global.y_size					= 0;
	global.clicked					= false;

	//object reset
	obj_right_expansor.ex.x_pos		= 0;
	obj_right_expansor.image_angle	= 0;


	if (instance_exists(obj_check_box))
	{
		obj_check_box.image_index	= 1;
	}
}