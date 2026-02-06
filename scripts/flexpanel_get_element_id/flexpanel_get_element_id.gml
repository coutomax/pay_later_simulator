// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flexpanel_get_element_id(clock_layer, childText){
	
	var flex_node = layer_get_flexpanel_node(clock_layer);
	var fp_text = flexpanel_text_finder(flex_node, childText);

	var _text_struct = flexpanel_node_get_struct(fp_text);
	return _text_struct.layerElements[0].elementId;
}