/// @description Insert description here
// You can write your code in this editor


open = false;
door_stage = 45;
door_speed = 1.5;

knob_length = 8;

shine_step = 0;

knock_amount = 0;

indicator = false;
bounce = 0;
step = 0;

story = "bea1";


sprite = spr_library_door;
color = #501733;
knock_time = 80;



char_struct = {
	sprite: spr_beatrice,
	anim_speed: 0.05,
	shoulder_width: 14,
	shoulder_height: 30,
	face_y: 33,
	face_radius: 13,
	eye_x: 7,
	eye_y: 0,
};

character = instance_create_depth(x - 24, 0, layer_get_depth("houses") + 10, obj_character_par, char_struct);




