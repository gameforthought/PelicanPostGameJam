/// @description summon menu
// You can write your code in this editor

if global.pause = 0 && !instance_exists(obj_room_transition) && !instance_exists(obj_truck_menu) {
if clickable = true {
	show_debug_message("Truck is clickable");
	if !instance_exists(obj_ride_bt) {
	if instance_exists(obj_playerChar) {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_truck_menu, {
			array: ["ride", "inventory"], 	
		});
	} else {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_truck_menu, {
			array: ["walk", "inventory"], 	
		});
	}
	} 
}
}