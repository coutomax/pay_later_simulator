function scr_puzzle_paused_behavior(){
	if (instance_exists(obj_paper))
	{
		obj_paper.visible	= !global.puzzle_paused;
	}
}