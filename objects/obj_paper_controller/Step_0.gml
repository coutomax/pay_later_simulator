scr_depth_adjustment();

if (dragging && global.drag_id != noone)
{
	global.drag_id.x	= mouse_x - global.drag_id.x_grab;
	global.drag_id.y	= mouse_y - global.drag_id.y_grab;
}