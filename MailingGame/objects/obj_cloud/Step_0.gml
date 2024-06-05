/// @description Insert description here
// You can write your code in this editor


var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
pos += cloud_speed;

x = pos + vx;

if pos > 480 + 130 {
	pos = -130;
}

if obj_time_tracker.sunset_bool = true {
	sky_color = merge_color(c_white, sunset_color, obj_time_tracker.sunset_progress / 10);	
	
}

if obj_time_tracker.night_bool =  true {
	sky_color = merge_color(sunset_color, night_color, obj_time_tracker.night_progress / 10);
}

if layer_get_name(layer) = "clouds2" {
	color = merge_color(sky_color, darker_a, 0.2);
} else {
	color = sky_color;
}

