/// @description Insert description here
// You can write your code in this editor

open = false;
door_stage = 48;
door_speed = 1.5;

knock_amount = 0;

story = "Susan"

indicator = false;
bounce = 0;
step = 0;

sprite = spr_suzannah_door;
color = #bf5e66;
knock_time = 200;
hearing = 50;

char_struct = {
	sprite: spr_suzannah,
	anim_speed: 0.05,
	shoulder_width: 16,
	shoulder_height: 35,
	face_y: 52,
	face_radius: 16,
	eye_x: 12,
	eye_y: -1,
};

character = instance_create_depth(x - 24, 0, layer_get_depth(layer) + 350, obj_character_par, char_struct);


