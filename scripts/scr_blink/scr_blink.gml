function scr_blink(obj, blink_speed){
	var b = {
	
		alpha		:	0,
		object		:	obj,
		a_increase	:	true,
		b_speed		:	blink_speed,
				
		on_create	:	function ()
		{
			self.object.image_alpha		= 0;			
		},
		
		on_step		:	function (condition)
		{
			if (!global.paused)
			{
				if (self.alpha > 1)
				{
					self.alpha		= 1;
					self.a_increase	= false;
				}
				else 
					if (self.alpha < 0)
					{
						self.alpha		= 0;
						self.a_increase	= true;
					}
			
				if (condition)
				{
					if (self.a_increase)
					{
						self.alpha += self.b_speed;
					}
					else
					{
						self.alpha -= self.b_speed;
					}
				}
				else
				{
					self.alpha				= 0;
				}
			
				self.object.image_alpha		= self.alpha;
			}
		}	
	}
	
	return b;
}