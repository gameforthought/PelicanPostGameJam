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

function inventory_add(root_object, item_type){
	var slot = inventory_search(root_object, -1);
	if(slot != -1)
	{
		with (root_object) inventory[slot] = item_type;
		return true;
	}
	else return false;


}

function inventory_swap(object_from, slot_from, object_to, slot_to){
	var item_from = object_from.inventory[slot_from];
	object_from.inventory[slot_from] = object_to.inventory[slot_to];
	object_to.inventory[slot_to] = item_from;
}
