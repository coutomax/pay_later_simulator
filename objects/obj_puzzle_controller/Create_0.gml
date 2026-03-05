x_grab			= 0;
y_grab			= 0;

dragging		= false;

a = scr_set_flexpanel_text(noone, "txt_puzzle", "ui_bottom_buttons");

a.on_create();

function puzzle_closer()
{
	var	_papers			= instance_number(obj_paper);

	if (_papers == 0 && global.puzzle)
	{		
		global.puzzle			= false;
		global.paused			= false;
		global.puzzle_paused	= false;
		global.fading			= false;
	
		global.stress			+= (15 + (6 - global.puzzle_points) * 5);
		obj_game.game_hours		+= 2;
		global.hours			= obj_game.game_hours;		
	}
	
	a.on_edit($"{global.puzzle_points}");
}