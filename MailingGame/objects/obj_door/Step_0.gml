/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_door)){
	if open = false {
	open = true;
	} else {
		open = false;
	}
	//instance_create_layer(x,y-400,"Text", obj_textbox);
}

if open = true {
	door_stage -= 1;	
} else {
	door_stage += 1;	
}

door_stage = clamp(door_stage, 0, 48);

