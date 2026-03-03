visible			= false;

escalaX			= image_xscale;
escalaY			= image_yscale;

xscale			= escalaX;
yscale			= escalaY;

switch (check_type)
{
	case "check":
		image_index = 0;
	break;
	case "cancel":
		image_index = 1;
	break;
	case "alert":
		image_index = 2;
	break;
}