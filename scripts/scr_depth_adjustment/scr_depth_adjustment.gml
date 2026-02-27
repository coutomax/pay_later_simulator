function scr_depth_adjustment(){
	
	if (instance_exists(obj_paper))
	{
		if (mouse_check_button_pressed(mb_left))
		{
			var _top_inst		= noone;
		    var _top_depth		= 999999;
	
			var _list			= ds_list_create();
			var _n				= instance_position_list(mouse_x, mouse_y, obj_paper, _list, false);

		    if (_n > 0)
			{
				for (var i = 0; i < _n; i++)
			    {
			        var _inst = _list[| i];

			        if (instance_exists(_inst))
			        {
			            if (_inst.depth < _top_depth)
			            {
			                _top_depth		= _inst.depth;
			                _top_inst		= _inst;
			            }
			        }
			    }

			    if (_top_inst != noone)
			    {
			        var front_depth			= _top_inst.depth;

			        with (obj_paper)
			        {
			            if (depth < front_depth)
			                front_depth		= depth;
			        }

			        _top_inst.depth			= front_depth - 1;
				
					_top_inst.x_grab		= mouse_x - _top_inst.x;
					_top_inst.y_grab		= mouse_y - _top_inst.y;
					
					obj_paper_controller.dragging	= true;
					
			    }
			}
	
			ds_list_destroy(_list)
	
			global.drag_id					= _top_inst;
			
		}
	
		if (mouse_check_button_released(mb_left))
		{
			obj_paper_controller.dragging	= false;
			global.drag_id					= noone;
		}
	}
}