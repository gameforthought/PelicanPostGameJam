/// @description Insert description here
// You can write your code in this editor

button_array = array;

length = array_length(button_array);


for (var i = 0; i < length; i += 1) {
	var _button_spawn;
	switch button_array[i] {
		case "ride":
			_button_spawn = obj_ride_bt;
		break;
		case "inventory":
			_button_spawn = obj_inventory_bt;
		break;
		case "walk":
		_button_spawn = obj_walk_bt;
		break;
	}
	
	
	instance_create_depth(x + (i * 33), y - 10, depth - 1, _button_spawn)
}


