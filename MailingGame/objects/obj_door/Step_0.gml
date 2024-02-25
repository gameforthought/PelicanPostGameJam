/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_door)){
	instance_create_layer(x,y-400,"Text", obj_textbox);
}


