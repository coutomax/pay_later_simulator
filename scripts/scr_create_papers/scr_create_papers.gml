function scr_create_papers(){
	var _object			= global.papers;

	var _xpos			= 0;
	var _ypos			= 0;
	var _depth			= -100;
	
	for (var i = 0; i < 6; i++)
	{
		if (_object[i].valid)
		{
			var new_status			= irandom(2);
			_object[i].status		= new_status;
			
			if (_object[i]._id == 3)
			{
				_object[i].status				= 0;
				_object[i].description			= "need more info.";
			}
			else
			{
				switch(_object[i].status)
				{
					case 0:
						_object[i].description			= "unchecked.";
					break;
				
					case 1:
						_object[i].description			= "checked.";
					break;
				
					case 2:
						_object[i].description			= "canceled.";
					break;
				}
			}			
		}
		else
		{
			if (_object[i]._id == 4 || _object[i]._id == 5)
			{
				_object[i].status			= 2;
				_object[i].description		= "unreadable."
			}
		}
		
		_xpos						= display_get_gui_width() / 2;
		_ypos						= (display_get_gui_height() / 2) - 80;
		
		var _inst					= instance_create_layer(_xpos, _ypos, "Puzzle_instance", obj_paper);
		
		_inst.data					= _object[i];
		_inst.sprite_index			= _object[i].sprite;
		_inst.image_index			= _object[i].status;
		
		//manter desta forma
		_inst.depth					= _depth;
		_depth--;
	}
}