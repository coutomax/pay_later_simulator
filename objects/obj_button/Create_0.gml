escalaX			= image_xscale;
escalaY			= image_yscale;

xscale			= escalaX;
yscale			= escalaY;

selfLayer		= noone;
selfText		= noone;
back_to_menu	= false;
new_game		= false;

hasntSave		= actions == "continue_save" && !global.hasSave

paused_imune	= [
	"yes_option", 
	"no_option",
	"continue",
	"settings",
	"main_menu",
	"save",
	"exit",
	"back_menu_yes_option",
	"back_menu_no_option"
	
];

#region recebe os dados corretos de cada botão

	getLayerName	= layer_get_name(self.layer);	
	selfLayer		= layer_get_flexpanel_node(getLayerName);	
	selfText		= scr_flexpanel_text_finder(selfLayer, $"fp_{actions}");

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
				global.fading		= true;
				new_game			= true;				
			break;
		
			case "continue":
				layer_set_visible("ui_pause_menu", false);
				
				global.paused				= !global.paused;

				if (global.puzzle)
				{
					global.puzzle_paused	= !global.puzzle_paused;
				}
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
				scr_reset();
				
				layer_set_visible(self.layer, false);
				layer_set_visible("ui_bars", false);
				layer_set_visible("ui_clock", false);
				layer_set_visible("ui_right_expansor", false);
				layer_set_visible("ui_expansor_panel", false);
				layer_set_visible("ui_house_panel", false);
				layer_set_visible("ui_shop_panel", false);
				layer_set_visible("ui_pause_menu", false);				
				
				layer_set_visible("ui_start_menu", true);
											
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
				//global.energy -= 5;
				//global.stress += 1;
			break;
			
			case "right_expand":
			
			break;
			
			case "shop_expand":
			
			break;
		}
	}
}

#region desabilita o botão de continuar um save caso não exista um

	if (hasntSave)
	{
		image_index			= 2;
	}

#endregion


