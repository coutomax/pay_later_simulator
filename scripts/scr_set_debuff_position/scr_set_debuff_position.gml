function scr_set_debuff_position(){
	
	var _debuffs = global.debuffs_list;
		
	for (var i = 0; i < 3; i++)
	{//linhas
		for (var j = 0; j < 4; j++)
		{ //colunas
			if (array_length(_debuffs) > 0)
			{
				var _root			= layer_get_flexpanel_node("ui_bottom_buttons");
				var _flex			= flexpanel_node_get_child(_root, "fp_panel_status");
				var _row			= flexpanel_node_get_child(_flex, $"fp_icons_row_{i}");
				var _col			= flexpanel_node_get_child(_row, $"fp_icon_{j}");
				
				var _instance		= flexpanel_node_get_struct(_col);
				
				_instance.layerElements[0].instanceId.sprite_index		= _debuffs[0].sprite;
				
				array_delete(_debuffs, 0, 1);
			} 
			else
			{
				break;
			}
		}		    
	}
}