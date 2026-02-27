if (global.drag_id != noone)
{
	if (self.id == global.drag_id.id)
	{
		obj_paper_controller.dragging		= false;
		global.drag_id	= noone;
	}
}