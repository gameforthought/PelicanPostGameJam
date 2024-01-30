/// @description enter truck (temp)
// You can write your code in this editor

if (place_meeting(x, y, obj_truck)) {
	obj_truck.alarm[0] = 20;
	obj_truck.dismount_anim = true;
	//show_debug_message("mount");
	instance_destroy();
}
