/// @description summon menu
// You can write your code in this editor

if global.pause = 0 && !instance_exists(obj_room_transition) {
if clickable = true {
	show_debug_message("Truck is clickable");
	if !instance_exists(obj_ride_bt) {
	if instance_exists(obj_playerChar) {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_posUI_container, {
			array: ["ride", "inventory"], 	
		});
	} else {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_posUI_container, {
			array: ["walk", "inventory"], 	
		});
	}
	} 
}
}