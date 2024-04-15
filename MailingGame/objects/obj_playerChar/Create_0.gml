/// @description variable definitions
// You can write your code in this editor

hspd = 0;
hspd_prev = 0;

//initializing movement stats
road_start = 0;
road_end = room_width;

if room = demo_room {
	road_start = 210;
	road_end = room_width;
}

if room = post_office {
	road_start = 58;
	road_end = room_width - 60;
}

yspd = 0;

if instance_exists(obj_truck) = true {	
	obj_truck.alarm[0] = 20;
	obj_truck.dismount_anim = true;
	
}

if variable_instance_exists(id, "start_orient") {
	image_xscale = start_orient;	
} else {
	image_xscale = -1;	
}


char_anim = 0;
blink = 0;

walk = false;

idle = true;

jump = false;

swing_num = 0;
swing = 0;
swing_width = 10;

emotion_drawer = -1;
y_scale = 1;



