function scr_text_set_alpha(_layer, txt_name, _alpha)
{
	var text_element_id		= layer_text_get_id(_layer, txt_name);
	
	layer_text_alpha(text_element_id, _alpha);
}