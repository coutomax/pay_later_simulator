escalaX			= image_xscale;
escalaY			= image_yscale;

xscale			= escalaX;
yscale			= escalaY;

sprite			= noone;

amount			= 0;
maxAmount		= 0;

percent			= 0;

function get_bar_type()
{
	if (bar_type == "life_bar") 
	{ 
		sprite			= spr_life_filler 
		maxAmount		= global.max_life;
		amount			= global.life;
	}
	else
		if (bar_type == "energy_bar") 
		{ 
			sprite		= spr_energy_bar 
			maxAmount	= global.max_energy;
			amount		= global.energy;
		}
		else 
		{
			sprite		= spr_stress_bar 
			maxAmount	= global.max_stress;
			amount		= global.stress;
		}
}