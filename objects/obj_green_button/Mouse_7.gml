event_inherited();

if (actions == "work" && !this_worked)
{	
	this_worked			= !this_worked;
	global.worked		= true;
	var table = instance_create_layer(640, 460, "Instances", obj_table);
}

if (global.worked && global.on_the_table)
{
	global.energy		-= 5;
	global.stress		+= 1;
}