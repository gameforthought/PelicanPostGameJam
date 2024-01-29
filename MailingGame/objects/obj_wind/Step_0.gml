/// @description Insert description here
// You can write your code in this editor

if windy = true {
	wind_step += 1;	
} else {
	wind_step = 0;	
}

global.wind = sin(wind_level * wind_step);

if global.wind < 0 {
	windy = false;
	alarm[0] = irandom_range(60, 2000);
}

if global.wind > 0 {
	if irandom_range(0, lerp(50, 25, global.wind)) = 0 {
		instance_create_layer(irandom_range(camera_get_view_x(camera) - 100, camera_get_view_x(camera)) - 10, irandom_range(-200, 1 * room_height), "dust", obj_wind_leaf);
	}
}



