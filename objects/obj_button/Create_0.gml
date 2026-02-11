escalaX = image_xscale;
escalaY = image_yscale;

xscale = escalaX;
yscale = escalaY;

selfLayer = noone;
selfText = noone;

hasntSave = actions == "continue_save" && !global.hasSave

#region recebe os dados corretos de cada botão

	getLayerName = layer_get_name(self.layer);
	
	selfLayer = layer_get_flexpanel_node(getLayerName);	
	selfText = flexpanel_text_finder(selfLayer, $"fp_{actions}");

#endregion

function button_actions()
{
	// valida botões fora do opainel de pause quando global.pause == true;

	if (getLayerName != "ui_pause_menu" && getLayerName != "ui_quit_without_save" && global.paused)
	{
		exit;
	}
	else
	{
		switch(actions)
		{
			case "new_game":
				room_goto(0);
				layer_set_visible("ui_bars", true);
				layer_set_visible("ui_clock", true);
				layer_set_visible("ui_right_expansor", true);
				layer_set_visible("ui_start_menu", false);
			break;
		
			case "continue":
				layer_set_visible("ui_pause_menu", false);
				global.paused = false;
			break;
		
			case "continue_save":
			
			break;
		
			case "settings":
		
			break;
		
			case "yes_option":
				game_end();
			break;
		
			case "no_option":
				layer_set_visible(self.layer, false);
				layer_set_visible("ui_start_menu", true);
			break;
		
			case "main_menu":
				layer_set_visible("ui_quit_without_save", true);			 
			break;
		
			case "back_menu_yes_option":		
				global.paused = false;
				
				layer_set_visible(self.layer, false);
				layer_set_visible("ui_bars", false);
				layer_set_visible("ui_clock", false);
				layer_set_visible("ui_right_expansor", false);
				layer_set_visible("ui_expansor_panel", false);
				layer_set_visible("ui_pause_menu", false);
				
				layer_set_visible("ui_start_menu", true);
				
				reset();
				room_goto(1);
			break;
		
			case "back_menu_no_option":
				layer_set_visible(self.layer, false);
			break;
		
			case "exit":
				layer_set_visible(self.layer, false);
				layer_set_visible("ui_yes_no_option_menu", true);
			break;
			
			case "work":
				global.energy -= 5;
				global.stress += 1;
			break;
			
			case "right_expand":
			
			break;
		}
	}
}

#region desabilita o botão de continuar um save caso não exista um

	if (hasntSave)
	{
		image_index = 2;
	}

#endregion


