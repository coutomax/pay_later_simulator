if (global.drag_id != noone)
{
	switch (check_type)
	{
		case "check":
			collision_condition(other.data.valid && other.data.status == 1, other, snd_paper_paging);
		break;
		case "cancel":
			collision_condition(other.data.status == 2, other, snd_paper_tear);
		break;
		case "alert":
			collision_condition(other.data.valid && other.data.status == 0, other, snd_paper_writing);
		break;
	}
}