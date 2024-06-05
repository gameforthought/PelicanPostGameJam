/// @description Insert description here
// You can write your code in this editor

if (x > obj_camera_manager.camera_target - 620) && (x < obj_camera_manager.camera_target + 620) {

wind = global.wind * wind_mod;
draw_set_color(c_white);

draw_primitive_begin_texture(pr_trianglestrip, tex_array[subimage]);
	
	draw_vertex_texture(x - (60), y, 0, 1);
	draw_vertex_texture(x + (60), y, 1, 1);
	draw_vertex_texture(x - (60) + (wind * 10), y - 59, 0, 0);
	draw_vertex_texture(x + (60) + (wind * 10), y - 59, 1, 0);
	
draw_primitive_end();

}



