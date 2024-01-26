/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

for (var i = 1; i < segments; i += 1) {
	
draw_primitive_begin_texture(pr_trianglestrip, tex_array[segment_array[i][2]]);
	draw_vertex_texture(x - segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 0, 1);
	draw_vertex_texture(x + segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 1, 1);
	draw_vertex_texture(x - segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 0, 0);
	draw_vertex_texture(x + segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 1, 0);
	
	
draw_primitive_end();



}




