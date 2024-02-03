/// @description Insert description here
// You can write your code in this editor

if hspd = 0 {
	if !instance_exists(obj_posUI_container) {
	if instance_exists(obj_playerChar) {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_posUI_container, {
			array: ["ride", "inventory"], 	
		});
	} else {
		instance_create_layer(mouse_x, mouse_y, "positional_gui", obj_posUI_container, {
			array: ["walk"], 	
		});
	}
	}
}