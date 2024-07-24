/// @description Insert description here
// You can write your code in this editor

camera = view_get_camera(0);

global.window_scale = 2;




if instance_exists(obj_playerChar) {
	target_character = obj_playerChar.id;
} else if instance_exists(obj_truck) {
	target_character = obj_truck.id;
} else {
	target_character = self;
	hspd = 0;
}



move_dir = 1;

camera_target = target_character.x + move_dir * (camera_get_view_width(camera) / 6);

camera_var = camera_target;

dir = 1;
dialogue_change = 0;

