event_inherited();

image_index = 1;
image_alpha = 0;

alpha = 0;
alphaText = 0;

panel_layer = "ui_expansor_panel";
flex_panel_node = layer_get_flexpanel_node(panel_layer);
flex_panel_text = flexpanel_node_get_child(flex_panel_node, "fp_text");
flex_panel_panel = flexpanel_node_get_child(flex_panel_node, "fp_content");

text_set_alpha(panel_layer, $"txt_bills", alphaText);
text_set_alpha(panel_layer, $"txt_{actions}", alphaText);
		
//width : 326, marginRight : 0, marginTop : 0, marginBottom : 0, height : 486
var _flex_panel_layout = flexpanel_node_layout_get_position(flex_panel_panel);

max_x = _flex_panel_layout.width;
max_y = _flex_panel_layout.height;

button_desapear = function()
{	
	if (global.clicked)
	{
		if (global.y_size >= max_y/2 && image_alpha <= 1)
		{
			alpha = lerp(image_alpha, 1, .1);
			if (alpha > 0.5)
			{
				alphaText = alpha
			}
		}	
	}
	else
	{
		if (image_alpha >= 0 && global.y_size <= max_y)
		{
			alpha = lerp(image_alpha, 0, .3);
			alphaText = 0
		}
	}	
	
	image_alpha = clamp(alpha, 0, 1);
	alphaText = clamp(alphaText, 0, 1);
	
	//Ajustando os textos
	text_set_alpha(panel_layer, "txt_bills", alphaText);
	text_set_alpha(panel_layer, $"txt_{actions}", alphaText);
	
}