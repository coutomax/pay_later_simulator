function scr_reset(){
	
	//boolean reset
	global.paused					= false;
	global.hasSave					= false;
	global.hadLunch					= false;
	global.hadDinner				= false;
	global.hadBreakfast				= false;
	global.hadSleep					= false;
	global.worked					= false;
	global.on_the_table				= false;
	global.puzzle					= false;
	global.fading					= false;

	//numeric reset
	global.max_energy				= 100;
	global.max_stress				= 100;
	global.max_life					= 100;
	global.velocity					= 4;
	global.fade						= 0;

	global.energy					= 100;
	global.stress					= 0;
	global.life						= 100;

	global.minutes					= 1;
	global.hours					= 8;

	global.day						= 1;
	global.week						= 1;
	global.month					= 1;
	global.year						= 1;

	global.x_size					= 0;
	global.y_size					= 0;
	global.opened					= false;
	global.is_animating				= false;
	
	global.current_action			= noone;

	//object reset
	if (instance_exists(obj_green_button))
	{
		obj_green_button.this_worked				= false;
	}
	
	if	(instance_exists(obj_right_expansor))
	{
		obj_right_expansor.behavior.ex.x_pos		= 0;
		obj_right_expansor.image_angle				= 0;
	}
		
	if	(instance_exists(obj_shop_button))
	{
		obj_shop_button.behavior.ex.x_pos			= 0;	
	}
	
	if	(instance_exists(obj_house_button))
	{
		obj_house_button.behavior.ex.x_pos			= 0;
	}

	if (instance_exists(obj_check_box))
	{
		obj_check_box.image_index	= 1;
		obj_check_box.image_alpha	= 0;
		obj_check_box.alpha			= 0;
		obj_check_box.alphaText		= 0;
		
		instance_deactivate_object(obj_check_box);
	}
	
	if (instance_exists(obj_table))
	{
		instance_destroy(obj_table);
	}
}