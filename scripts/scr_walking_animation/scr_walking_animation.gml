// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_walking_animation(obj){

	if(instance_exists(obj) && global.worked && !global.on_the_table)
	{
		if (obj.y <= 455)
		{
			obj.sprite_index		= spr_walking_character;
			obj.y					+= global.velocity;
		}
		else
		{
			obj.sprite_index		= spr_character;
			global.on_the_table		= true;
		}
	}
}