/// @description Insert description here
// You can write your code in this editor

if windy = true {
	wind_step += 1;	
} else {
	wind_step = 0;	
}

wind = sin(wind_level * wind_step);

global.wind = EaseInBack(wind, 0, 1, 1);

if global.wind > 0 {
	show_debug_message(string(global.wind))	
}

if wind < 0 {
	windy = false;
	alarm[0] = irandom_range(60, 2000);
}

if wind > 0 {
	if irandom_range(0, lerp(70, 35, wind)) = 0 {
		instance_create_layer(irandom_range(camera_get_view_x(camera) - 100, camera_get_view_x(camera)) - 10, irandom_range(-200, 1 * room_height), "dust", obj_wind_leaf);
	}
}



