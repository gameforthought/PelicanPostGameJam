/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

//draw_text(20, 20, string(sunset_bool) + ", " + string(night_bool)+ ", " + string(day_progress));

for (var i = 0; i < 7; i += 1) {
	draw_set_color(merge_color(colorA, colorB, i / 7));
	draw_rectangle(camera_get_view_x(camera), i * 25, camera_get_view_x(camera) + 480, (i + 1) * 25, false);	
}
