event_inherited();

animating = false;

//posicao do botao
x_pos = 0;
acceleration = 0.1;

max_pos = 0;
min_pos = 0;

max_angle = 180;
min_angle = 0;
rotation = 0.07;

//altura e largura do painel
max_x = 0;
max_y = 0;

min_x = 0;
min_y = 0

panel_w = 50;
panel_h = 50;

//dados do flex do botão
selfLayer = layer_get_name(self.layer);
flexNode = layer_get_flexpanel_node(selfLayer);
flexPanelButton = flexpanel_node_get_child(flexNode, "fp_panel");
flexButton = flexpanel_node_get_child(flexNode, $"fp_{actions}"); 

var _flex_layout = flexpanel_node_layout_get_position(flexPanelButton);
var _flex_button_layout = flexpanel_node_layout_get_position(flexButton);

max_pos = _flex_layout.width - _flex_button_layout.width;

//dados do flex do painel
panelLayer = "ui_expansor_panel";
flexPanelNode = layer_get_flexpanel_node(panelLayer);
flexPanelPanel = flexpanel_node_get_child(flexPanelNode, "fp_content");

//width : 326, marginRight : 0, marginTop : 0, marginBottom : 0, height : 486
var _flex_panel_layout = flexpanel_node_layout_get_position(flexPanelPanel);

max_x = _flex_panel_layout.width;
max_y = _flex_panel_layout.height;

layer_set_visible(panelLayer, false);
flexpanel_node_style_set_width(flexPanelPanel, 50, flexpanel_unit.point);
flexpanel_node_style_set_height(flexPanelPanel, 50, flexpanel_unit.point);

//lista de components do flexpanel interno

//flexpanel_node_style_set_display(flexButton, flexpanel_display.flex);


function expand_animation()
{
	if (global.clicked)
	{
		if (x_pos <= max_pos)
		{
			layer_set_visible(panelLayer, true);
			x_pos = lerp(x_pos, max_pos, acceleration);			
			image_angle = lerp(image_angle, max_angle, rotation);
			animating = true;
			
			if (panel_w <= max_x)
			{
				panel_w = lerp(panel_w, max_x, acceleration);
				global.x_size = panel_w;
			}
			
			if (panel_h <= max_y)
			{
				panel_h = lerp(panel_h, max_y, acceleration);
				global.y_size = panel_h;
			}
		}
	}
	else
	{
		if (x_pos >= 0)
		{
			x_pos = lerp(x_pos, min_pos, acceleration);
			image_angle = lerp(image_angle, 0, rotation);
			animating = true;
			
			if (panel_w >= 1)
			{
				panel_w = lerp(panel_w, 1, acceleration);
				global.x_size = panel_w;
			}
			
			if (panel_h >= 1)
			{
				panel_h = lerp(panel_h, 1, acceleration);
				global.y_size = panel_h;
			}
		}
	}
	
	if (animating)
	{
		if (x_pos >= max_pos - 1 && global.clicked)
		{
			animating = false;
		}
		else
			if (x_pos <= 2 && !global.clicked)
			{
				animating = false;
			}
	}
}