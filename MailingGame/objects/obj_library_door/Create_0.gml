/// @description Insert description here
// You can write your code in this editor

open = false;
door_stage = 48;
door_speed = 1.5;

indicator = false;
bounce = 0;
step = 0;

sprite = spr_library_door;
color = #d9c498;

char_struct = {
	sprite: spr_beatrice,
	anim_speed: 0.05,
	shoulder_width: 14,
	shoulder_height: 30,
};

character = instance_create_depth(x - 24, 0, layer_get_depth(layer) + 350, obj_character_par, char_struct);




