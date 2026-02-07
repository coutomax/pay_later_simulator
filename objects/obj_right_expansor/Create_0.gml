event_inherited();

clicked = false;
animating = false;

x_pos = 0;
x_speed = 3;
x_acceleration = 0.1;

max_pos = 0;
min_pos = 0;

max_angle = 180;
min_angle = 0;
rotation = 0.07;

var _relative_x = x;

selfLayer = layer_get_name(self.layer);
flexNode = layer_get_flexpanel_node(selfLayer);
flexPanel = flexpanel_node_get_child(flexNode, "fp_panel");
flexButton = flexpanel_node_get_child(flexNode, $"fp_{actions}"); 

var _flex_layout = flexpanel_node_layout_get_position(flexPanel);
var _flex_button_layout = flexpanel_node_layout_get_position(flexButton);

max_pos = _flex_layout.width - _flex_button_layout.width;

function expand_animation()
{
	if (clicked)
	{
		if (x_pos <= max_pos){
			x_pos = lerp(x_pos, max_pos, x_acceleration);
			image_angle = lerp(image_angle, max_angle, rotation);
			animating = true;
		}
	}
	else
	{
		if (x_pos >= 0)
		{
			x_pos = lerp(x_pos, 0, x_acceleration);
			image_angle = lerp(image_angle, 0, rotation);
			animating = true;
		}
	}
	
	if (animating)
	{
		if (x_pos >= max_pos - 1 && clicked)
		{
			animating = false;
		}
		else
			if (x_pos <= 2 && !clicked)
			{
				animating = false;
			}
	}	
}