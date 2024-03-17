/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_posUI_container) {
	instance_destroy();	
}

if position_meeting(mouse_x, mouse_y, id) {
	hover = -5;
}
else {
	hover = 0;
}