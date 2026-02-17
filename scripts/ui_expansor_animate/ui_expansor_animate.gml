function ui_expansor_animate(obj, panel_name, flipping){

	var ex = 
	{
	
		obj_layer			:		noone,
		obj_flex_node		:		noone,
		obj_button_panel	:		noone,
		obj_flex_button		:		noone,
		
		panel_flex_node		:		noone,
		panel_content_child :		noone,
		
		x_pos				:		0,
		max_pos				:		0,
		min_pos				:		0,
		max_x				:		0,
		max_y				:		0,
		min_angle			:		0,
		
		max_angle			:		180,
		acceleration		:		0.1,
		obj_rotation		:		0.07,
		panel_w				:		50,
		panel_h				:		50,
		is_visible			:		true,
		
		obj_getter			:		obj,
		panel				:		panel_name,
		flip				:		flipping,
	
		init	:			function ()
		{
		
			//dados do objeto
			self.obj_layer				= layer_get_name(self.obj_getter.layer);
			self.obj_flex_node			= layer_get_flexpanel_node(self.obj_layer);
			self.obj_flex_button		= flexpanel_node_get_child(self.obj_flex_node, $"fp_{self.obj_getter.actions}");
			self.obj_button_panel		= flexpanel_node_get_child(self.obj_flex_node, "fp_panel");
						
			var _flex_layout			= flexpanel_node_layout_get_position(self.obj_flex_button);
			var _flex_button_layout		= flexpanel_node_layout_get_position(self.obj_button_panel);
			
			self.max_pos				= _flex_button_layout.width - _flex_layout.width;
			
			//dados do painel
			self.panel_flex_node		= layer_get_flexpanel_node(panel);
			self.panel_content_child	= flexpanel_node_get_child(self.panel_flex_node, "fp_content");
			
			var _panel_layout			= flexpanel_node_layout_get_position(self.panel_content_child);
			
			self.max_x					= _panel_layout.width;
			self.max_y					= _panel_layout.height;
		
			//layer_set_visible(panel, false);
			
			flexpanel_node_style_set_width(self.panel_content_child, 50, flexpanel_unit.point);
			flexpanel_node_style_set_height(self.panel_content_child, 50, flexpanel_unit.point);
		
		},
		
		update	:			function (action)
		{
			if (global.opened)
			{	
				if (global.current_action != action)
				{
					self.is_visible						= false;
				}
				else
				{
					if (self.x_pos <= self.max_pos)
					{
						layer_set_visible(self.panel, true);
						
						self.x_pos						= lerp(self.x_pos, self.max_pos, self.acceleration);
						
						if (self.flip)
						{
							self.obj_getter.image_angle	= lerp(self.obj_getter.image_angle, self.max_angle, self.obj_rotation);
						}					
										
						if (self.panel_w <= self.max_x)
						{
							self.panel_w				= lerp(self.panel_w, self.max_x, self.acceleration);
							global.x_size				= self.panel_w;
						}
					
						if (self.panel_h <= self.max_y)
						{
							self.panel_h				= lerp(self.panel_h, self.max_y, self.acceleration);
							global.y_size				= self.panel_h;
						}
					}
					
					if (global.is_animating && self.panel_w >= self.max_pos - 5)
					{
						global.is_animating = !global.is_animating;
					}
				}
			}
			else
			{
				if (self.x_pos >= 0)
				{
					self.x_pos						= lerp(self.x_pos, self.min_pos, self.acceleration);
					
					if (self.flip)
					{
						self.obj_getter.image_angle	= lerp(self.obj_getter.image_angle, 0, self.obj_rotation);
					}					
										
					if (self.panel_w >= 1)
					{
						self.panel_w				= lerp(self.panel_w, 1, self.acceleration);
						global.x_size				= self.panel_w;
					}
					
					if(self.panel_h >= 1)
					{
						self.panel_h				= lerp(self.panel_w, 1, self.acceleration);
						global.y_size				= self.panel_h;
					}
				}
				
				if (!global.is_animating)
				{
						self.is_visible					= true;
				}	
				
				if (global.current_action == action && global.is_animating && self.panel_w <= 15)
				{
					global.is_animating = !global.is_animating;
				}
			}
			
			if (self.obj_flex_button != noone)
			{
				flexpanel_node_style_set_position(self.obj_flex_button, flexpanel_edge.left, self.x_pos, flexpanel_unit.point);
			}

			if (self.panel_content_child != noone)
			{
				flexpanel_node_style_set_width(self.panel_content_child, self.panel_w, flexpanel_unit.point);
				flexpanel_node_style_set_height(self.panel_content_child, self.panel_h, flexpanel_unit.point);
				
				var min_panel_w						= flexpanel_node_style_get_width(self.panel_content_child);
				var min_panel_h						= flexpanel_node_style_get_height(self.panel_content_child);
				
				if (min_panel_w.value <= 15 && min_panel_h.value <= 15)
				{
					layer_set_visible(self.panel, false);
				}
			}
			
			return {
                x_pos		:	self.x_pos,
                w			:	self.panel_w,
                h			:	self.panel_h,
                anim		:	global.is_animating,
				is_visible	:	self.is_visible
            };
		}
	}
	
	return ex;
}