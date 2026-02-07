event_inherited();

if (flexPanelButton != undefined)
{
	flexpanel_node_style_set_position(flexPanelButton, flexpanel_edge.left, x_pos, flexpanel_unit.point);
}

if (flexPanelPanel != undefined)
{
	flexpanel_node_style_set_width(flexPanelPanel, panel_w, flexpanel_unit.point);
	flexpanel_node_style_set_height(flexPanelPanel, panel_h, flexpanel_unit.point);
}

expand_animation();