function scr_expansor_behaviors(obj, panel_name, animating, flipping, actions){

	var s =
	{
		_visible		:	true,
		panel			:	panel_name,
		anim			:	animating,
		flip			:	flipping,
		object			:	obj,
		action			:	actions,
		
		on_create		:	function()
		{
			self.object.visible	= self._visible;
			
			ex					= scr_ui_expansor_animate(self.object, self.panel, self.flip);

			ex.init();
			
			return ex;
		},
		
		on_step			:	function()
		{
			var response		= ex.update(self.action);	
			self.object.visible	= response.is_visible;
		},
		
		on_left_released:	function()
		{
			if (self.object.visible)
			{
				global.opened			= !global.opened;
				global.is_animating		= !global.is_animating;
				global.current_action	= self.action;
			}
		}
		
	}
	
	return s;
}