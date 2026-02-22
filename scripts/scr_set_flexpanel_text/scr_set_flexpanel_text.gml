function scr_set_flexpanel_text(obj, text_name){

	var t = 
	{
	
		flex_panel_node		:	noone,
		flex_panel_text		:	noone,
		flex_panel_panel	:	noone,
		element_id			:	noone,
		txt_layer			:	noone,
		
		object				:	obj,
		txt_name			:	text_name,
		
		on_create			:	function ()
		{
			
			self.txt_layer				= layer_get_name(self.object.layer);
			self.flex_panel_node		= layer_get_flexpanel_node(self.txt_layer);
			self.flex_panel_text		= flexpanel_node_get_child(self.flex_panel_node, "fp_text");
			self.flex_panel_panel		= flexpanel_node_get_child(self.flex_panel_node, "fp_content");
			
			self.element_id				=  layer_text_get_id(self.txt_layer, self.txt_name);
						
			return
			{
				txt_layer			:	self.txt_layer,
				flex_panel_node		:	self.flex_panel_node,
				flex_panel_text		:	self.flex_panel_text,
				flex_panel_panel	:	self.flex_panel_panel,
				element_id			:	self.element_id
			}
		},
		
		on_edit				:	function (txt)
		{
			layer_text_text(self.element_id, txt);
		}	
	}
	
	return t;
}