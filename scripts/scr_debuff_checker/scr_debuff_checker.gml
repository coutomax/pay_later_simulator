function scr_debuff_checker(){
	
	if (global.stress > 65 ){ debuff_list_manager(global.debuffs[0]); }
	
	if (global.life < 30) { debuff_list_manager(global.debuffs[1]); }
	
	if (global.energy < 100 ) { debuff_list_manager(global.debuffs[2]); }
}

function array_item_delete(item)
{
	if (array_length(global.debuffs_list) > 0)
	{
		var _index		= array_get_index(global.debuffs_list, item);
		
		array_delete(global.debuffs_list, _index, 1);
	}
}

function debuff_list_manager(debuff)
{
	if (!array_contains(global.debuffs_list, debuff)) 
	{ 
		array_push(global.debuffs_list, debuff); 
	}/*
	else 
	{ 
		array_item_delete(debuff); 
	}*/
}