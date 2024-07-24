/// @description Insert description here
// You can write your code in this editor

global.window_scale = 2;

var cam_speed = 60;

//switch(object_get_name(target_character.object_index)) {
//	case "obj_truck":
//		cam_speed = 60;
//	break;
//	case "obj_playerChar":
//		cam_speed = 60;
//	break;
//	default:
//		cam_speed = 60;
//	break;
//}

if room = demo_room {

if instance_exists(obj_textbox) {
	//if instance_exists(obj_playerChar) {
	//	dir = obj_playerChar.image_xscale;	
	//} else {
	//	dir = (obj_truck.truck_state == PlayerState.FreeMove) ? obj_truck.image_xscale : -obj_truck.image_xscale;
	//	//dir = obj_truck.image_xscale;	
	//}
	
	dir = target_character.image_xscale;


	//turn direction into textbox position
	if dir = 1 {
		dialogue_change = 70;
	} 
	else {
		dialogue_change = -70;	
	}
} 
else if instance_exists(obj_title_screen) {
	dialogue_change = 20;
} else {
	dialogue_change = 0;
}



	//move_dir = obj_playerChar.image_xscale;
	//camera_target = dialogue_change + obj_playerChar.x + move_dir * (camera_get_view_width(camera) / 6);
	//move_towards_point(camera_target, y, 0.9 * (obj_playerChar.hspd * sign(obj_playerChar.image_xscale)) + (point_distance(camera_target, y, x, y)) / 60);
	
	//camera_target = dialogue_change + obj_truck.x + move_dir * (camera_get_view_width(camera) / 6);
	//move_towards_point(camera_target, y, 0.9 * (obj_truck.hspd * move_dir) + (point_distance(camera_target, y, x, y)) / 80);
	
	move_dir = sign(target_character.image_xscale);
	
	camera_target = dialogue_change + target_character.x + move_dir * (camera_get_view_width(camera) / 6);
	
	//move_towards_point(camera_target, y, 0.9 * (target_character.hspd * move_dir) + (point_distance(camera_target, y, x, y)) / cam_speed);
	move_towards_point(camera_target, y, 0.9 * (target_character.hspd * sign(target_character.image_xscale)) + (point_distance(camera_target, y, x, y)) / cam_speed);
	



if room = demo_room {
	camera_target = clamp(camera_target, 130, 7850);
	//show_debug_message(string(room_width));
}
 


camera_set_view_pos(camera, clamp(x - (camera_get_view_width(camera) / 2), -100, room_width - 200), 0);

if speed < 0.1 {
	speed = 0;	
}

}
