escalaX			= image_xscale;
escalaY			= image_yscale;

xscale			= escalaX;
yscale			= escalaY;

image_angle		= 90;

actual_hour		= global.hours;

arrow_spin = function()
{
	var hour = global.hours;
	
	if (hour > 2 && hour < 8)
	{
		image_angle			= 270;
	}
	else
	{
		if (hour == 8)
		{
			image_angle			= 90;
		}
		else
		{
			if (hour != actual_hour)
			{
				image_angle		-= 10;
				actual_hour		= global.hours;
			}
		}
	}
}