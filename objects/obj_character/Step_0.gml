
if (global.paused)
{
	image_speed		= 0;
	exit;
}
else
{
	image_speed		= 1;
}

if (global.worked)
{
	scr_walking_animation(self);
}
