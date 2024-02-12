/// @description Insert description here
// You can write your code in this editor

draw_set_color(color);
draw_rectangle(camera_get_view_x(camera), 160, camera_get_view_x(camera) + 480, 200, false);

//draw_set_color(#0D6066);
draw_set_color(merge_color(color, c_black, 0.2));
draw_rectangle(camera_get_view_x(camera), 160, camera_get_view_x(camera) + 480, 168, false);

for (var i = 0; i < 20; i += 1) {
	draw_ellipse(camera_get_view_x(camera) + 240 + reflect_array[i].ref_x - 6 + ( reflect_array[i].dir * sin_pos), 160 + reflect_array[i].ref_y, camera_get_view_x(camera) + 240 + reflect_array[i].ref_x + 6  + ( reflect_array[i].dir * sin_pos), 160 + reflect_array[i].ref_y + 8, false)

}

draw_set_color(c_black);
draw_rectangle(camera_get_view_x(camera), 160, camera_get_view_x(camera) + 480, 161.5, false);


