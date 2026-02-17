function scr_text_set_alpha(_layer, txt_name, _alpha)
{
	var flexpanel_node		= layer_get_flexpanel_node(_layer);
	var flexpanel_text		= flexpanel_node_get_child(flexpanel_node, "fp_text");	
	var text_element_id		= layer_text_get_id(_layer, txt_name);
	
	layer_text_alpha(text_element_id, _alpha);
}