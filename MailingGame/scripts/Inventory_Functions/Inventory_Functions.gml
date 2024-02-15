function inventory_search(root_object, item_type)
{
	for (var i = 0; i < INVENTORY_SLOTS; i++)
	{
		if(root_object.inventory[i] == item_type){
			return(i);
		}
	}
	return(-1);
}

function inventory_remove(root_object, item_type) {
	var _slot = inventory_search(root_object, item_type);
	if (_slot != -1)
	{
		with (root_object) inventory[_slot] = -1;
		return true;
	}
	else return false;
}
