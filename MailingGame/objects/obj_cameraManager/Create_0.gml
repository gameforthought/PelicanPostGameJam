/// @description Insert description here
// You can write your code in this editor

camera = view_get_camera(0);

move_dir = 1;

if instance_exists(obj_truck) {
	camera_target = obj_truck.x + move_dir * (camera_get_view_width(camera) / 6);
} else {
	camera_target = obj_playerChar.x + move_dir * (camera_get_view_width(camera) / 6);
}

camera_var = camera_target;

dir = 1;
dialogue_change = 0;

