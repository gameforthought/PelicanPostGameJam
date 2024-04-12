// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_item(knot_key, type, to_name, from_name, description) {
	var _subimage = -1;
	switch type {
		case "letter":
			_subimage = 1;
		break;
		case "package":
			_subimage = 0;
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

function remove_item(knot_key) {
	var _f = function(_element, _index) {
		return (_element.key = knot_key);	
	}
	
	
	var _item = array_find_index(obj_inventory.inventory, _f);
	
	array_delete(obj_inventory.inventory, _item, 1);
}

function door_set_knot(door, knot_key) {
	door.story = knot_key;
}

