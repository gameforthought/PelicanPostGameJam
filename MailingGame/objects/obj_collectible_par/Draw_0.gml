/// @description Insert description here
// You can write your code in this editor
var _view_x = view_get_xport(0)
var vx = camera_get_view_x(view_camera[0]);
var _view_width = view_get_wport(0);





if clickable = true && dissolve = false {

var _shine = surface_create(_view_width, 256);
surface_set_target(_shine);

var _shine_pos = lerp(480, -480, shine_step / 100);

draw_set_color(c_white);

draw_clear_alpha(c_white, 0);

draw_sprite(sprite_index, image_index, x - vx, y);


gpu_set_colorwriteenable(1, 1, 1, 0);

draw_line_width(-10, -10 + _shine_pos, 490, 490 + _shine_pos, 20);
draw_line_width(-10, -10 + 20 + _shine_pos, 490, 490 + 20 + _shine_pos, 5);

gpu_set_colorwriteenable(1, 1, 1, 1);


surface_reset_target();


draw_surface(_shine, vx, 0);


surface_free(_shine);

} else {
	draw_self();
}