/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

for (var i = 1; i < segments; i += 1) {
	
	
if abs(segment_array[i][2]) > 0 {
	var _branch_num = segment_array[i][2];

	
		draw_set_color(#A78468);
		//draw_rectangle(x + segment_array[i - 1][1], y - 20 * i, x + segment_array[i - 1][1] + (_branch_num * 8), (y - 20 * i) - 11, false);
		
		draw_primitive_begin(pr_trianglestrip);
			draw_vertex(x + segment_array[i - 1][1], y - 20 * i + 1);
			draw_vertex(x + segment_array[i - 1][1], (y - 20 * i) - 12);
			
			draw_vertex(x + segment_array[i - 1][1] + (_branch_num * 8), y - 20 * i);
			draw_vertex(x + segment_array[i - 1][1] + (_branch_num * 8), (y - 20 * i) - 10);
		
		
		draw_primitive_end();
		
		draw_sprite_ext(spr_treebranch, round(abs(_branch_num)) mod 2, x + segment_array[i - 1][1] + (_branch_num * 7), (y - 20 * i) - 10, sign(_branch_num), 1, 0, c_white, 1);

}	
	
	
	
draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglestrip, tex_array[segment_array[i][3]]);
	draw_vertex_texture(x - segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 0, 1);
	draw_vertex_texture(x + segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 1, 1);
	draw_vertex_texture(x - segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 0, 0);
	draw_vertex_texture(x + segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 1, 0);
	
	
draw_primitive_end();



}




