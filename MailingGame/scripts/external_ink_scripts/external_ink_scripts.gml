// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_item(_element, _parameter_array, _character_index) {
	
	var knot_key = _parameter_array[0];
	var type = _parameter_array[1];
	var to_name = _parameter_array[2];
	var from_name = _parameter_array[3];
	var description = _parameter_array[4];
	
	//knot_key, type, to_name, from_name, description
	
	var _subimage = -1;
	switch type {
		case "letter":
			_subimage = 1;
		break;
		case "package":
			_subimage = 0;
		break;
		case "gnome":
			_subimage = 2;
		break;
		default:
			_subimage = 1;
		break;
	}
	
	var _struct = {
		key: knot_key,
		subimage: _subimage,
		to: to_name,
		from: from_name,
		desc: description,
	}
	
	show_debug_message(string(_struct))
	
	var _f = function(_element, _index) {
		return (_element = -1);	
	}
	
	var _item = array_find_index(obj_inventory.inventory, _f);
	show_debug_message(string(_item))
	
	obj_inventory.inventory[_item] = _struct;

}

function remove_item(_element, _parameter_array, _character_index) {
	show_debug_message(string(_parameter_array))
	
	
	var knot_key = _parameter_array[0];
	
	for (var i = 0; i < array_length(obj_inventory.inventory); i++) {
		if obj_inventory.inventory[i] != -1 && obj_inventory.inventory[i].key = knot_key {
			array_delete(obj_inventory.inventory, i, 1);
			array_push(obj_inventory.inventory, -1);
		}
	}
}

function door_set_knot(_element, _parameter_array, _character_index) {
	var door = asset_get_index(_parameter_array[0]);
	var knot_key = _parameter_array[1];
	door.story = knot_key;
}
