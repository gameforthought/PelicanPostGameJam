/// @description variable definitions
// You can write your code in this editor

hspd = 0;
hspd_prev = 0;

road_start = 210;
road_end = room_width;

yspd = 0;

if instance_exists(obj_truck) = true {
	image_xscale = obj_truck.image_xscale;
	obj_truck.alarm[0] = 20;
	obj_truck.dismount_anim = true;
	
} else {
	image_xscale = 1;
}


char_anim = 0;
blink = 0;

walk = false;

idle = true;

jump = false;

swing_num = 0;
swing = 0;
swing_width = 10;



