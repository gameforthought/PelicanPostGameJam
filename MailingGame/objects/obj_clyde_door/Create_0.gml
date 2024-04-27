/// @description Insert description here
// You can write your code in this editor

open = false;
door_stage = 48;
door_speed = 1.5;

gnome_collected = 0;

knock_amount = 0;

story = -1;
story = "cly1";

indicator = false;
bounce = 0;
step = 0;

sprite = spr_clyde_door;
color = #239348;
knock_time = 80;


char_struct = {
	sprite: spr_clyde,
	anim_speed: 0.05,
	shoulder_width: 16,
	shoulder_height: 30,
	face_y: 45,
	face_radius: 17,
	eye_x: 10,
	eye_y: 2,
};

character = instance_create_depth(x - 24, 0, layer_get_depth(layer) + 350, obj_character_par, char_struct);


