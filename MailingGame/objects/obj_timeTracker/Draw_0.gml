/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

//draw_text(20, 20, string(sunset_bool) + ", " + string(night_bool)+ ", " + string(day_progress));

for (var i = 0; i < 7; i += 1) {
	draw_set_color(merge_color(colorA, colorB, i / 7));
	draw_rectangle(camera_get_view_x(camera), i * 25, camera_get_view_x(camera) + 480, (i + 1) * 25, false);	
}

draw_set_color(c_white);
for (var i = 0; i < array_length(star_array); i += 1) {
	if i < array_length(star_array) * (night_progress / 10) {
		draw_circle(camera_get_view_x(camera) + star_array[i].xpos, star_array[i].ypos, 1.5 + clamp(8 * sin(0.005 * pi * (star_step + star_array[i].step)) - 7, 0, 1), false);	
	}
}