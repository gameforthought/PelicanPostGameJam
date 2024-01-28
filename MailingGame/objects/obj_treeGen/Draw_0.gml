/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

draw_sprite_ext(spr_tree_leaves, big_leaves, x + segment_array[round(segments * 0.85) - 1][1], y - 20 * (round(segments * 0.85)) - 32, 2 * branch, 2, 0, #C4C4C4, 1);

for (var i = 1; i < segments; i += 1) {
	if segment_array[i][3] != 0 {
		draw_sprite_ext(spr_tree_branch, segment_array[i][3].subimage, x + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1], y - 20 * i, segment_array[i][3].dir, 1, 0, c_white, 1);
		
		if segment_array[i][3].place = 0 {
			draw_sprite_ext(spr_tree_leaves, segment_array[i][3].leaf, x + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1] + (segment_array[i][3].dir * segment_array[i][3].leaf_x), y - (20 * i) - segment_array[i][3].leaf_y, segment_array[i][3].dir, 1, 0, #DEDEDE, 1);
		}
		
	}
			
}


for (var i = 1; i < segments; i += 1) {
	
draw_primitive_begin_texture(pr_trianglestrip, tex_array[segment_array[i][2]]);
	draw_vertex_texture(x - segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 0, 1);
	draw_vertex_texture(x + segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 1, 1);
	draw_vertex_texture(x - segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 0, 0);
	draw_vertex_texture(x + segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 1, 0);
	
	
draw_primitive_end();

if segment_array[i][3] != 0 {
	if segment_array[i][3].place = 1 {
			draw_sprite_ext(spr_tree_leaves, segment_array[i][3].leaf, x + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1] + (segment_array[i][3].dir * segment_array[i][3].leaf_x), y - (20 * i) - segment_array[i][3].leaf_y, segment_array[i][3].dir, 1, 0, c_white, 1);
		}
}



}

draw_sprite_ext(spr_tree_crown, 0, x + segment_array[segments - 1][1], y - 20 * (segments), branch, 1, 0, c_white, 1);

draw_sprite_ext(spr_tree_leaves, crown_leaf, x + segment_array[segments - 1][1], y - 20 * (segments) - 30, branch, 1, 0, c_white, 1);




