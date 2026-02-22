// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_flexpanel_get_element_id(obj_layer, childText){
	
	var flex_node			= layer_get_flexpanel_node(obj_layer);
	var fp_text				= scr_flexpanel_text_finder(flex_node, childText);
	var _text_struct		= flexpanel_node_get_struct(fp_text);
	
	return _text_struct.layerElements[0].elementId;
}