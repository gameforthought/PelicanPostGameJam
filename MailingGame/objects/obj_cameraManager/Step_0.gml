/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_playerChar) {
	move_dir = obj_playerChar.image_xscale;
	
	camera_target = obj_playerChar.x + move_dir * (camera_get_view_width(camera) / 6);
	
	move_towards_point(camera_target, y, 0.9 * (obj_playerChar.hspd * sign(obj_playerChar.image_xscale)) + (point_distance(camera_target, y, x, y)) / 60);
} else {
	move_dir = obj_truck.image_xscale;
	
	camera_target = obj_truck.x + move_dir * (camera_get_view_width(camera) / 6);
	
	move_towards_point(camera_target, y, 0.9 * (obj_truck.hspd * sign(obj_truck.image_xscale)) + (point_distance(camera_target, y, x, y)) / 80);
}



camera_set_view_pos(camera, x - (camera_get_view_width(camera) / 2), 0);

if speed < 0.1 {
	speed = 0;	
}

