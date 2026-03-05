if (global.drag_id != noone)
{
	var _condition		= false;
	switch (check_type)
	{
		case "check":
			_condition		= other.data.valid && other.data.status == 1;
			collision_condition(_condition, other, snd_paper_paging);
		break;
		case "cancel":
			_condition		= other.data.status == 2;
			collision_condition(_condition, other, snd_paper_tear);
		break;
		case "alert":
			_condition		= other.data.valid && other.data.status == 0;
			collision_condition(_condition, other, snd_paper_writing);
		break;
	}
}