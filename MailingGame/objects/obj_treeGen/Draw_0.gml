/// @description Insert description here
// You can write your code in this editor


sway += 2;

if (x > obj_camera_manager.camera_target - 620) && (x < obj_camera_manager.camera_target + 620) {

wind =  EaseInBack(global.wind, 0, 1, 1) * wind_mod;

draw_set_color(layer_color);

draw_sprite_ext(spr_tree_leaves, big_leaves, x + (4 * sin(0.001 * pi * sway)) + (wind * wind_amount) + segment_array[round(segments * 0.85) - 1][1], y - 20 * (round(segments * 0.85)) - 32, 2 * branch, 2, 0, darker_b, 1);

for (var i = 1; i < segments; i += 1) {
	if segment_array[i][3] != 0 {
		
		draw_sprite_ext(spr_tree_branch, segment_array[i][3].subimage, x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad(i / segments, 0, 1, 1))) + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1], y - 20 * i, segment_array[i][3].dir, 1, 0, layer_color, 1);
		
		if segment_array[i][3].place = 0 {
			draw_sprite_ext(spr_tree_leaves, segment_array[i][3].leaf, x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad(i / segments, 0, 1, 1))) + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1] + (segment_array[i][3].dir * segment_array[i][3].leaf_x), y - (20 * i) - segment_array[i][3].leaf_y, segment_array[i][3].dir, 1, 0, darker_a, 1);
		}
		
	}
			
}


for (var i = 1; i < segments; i += 1) {
	
draw_primitive_begin_texture(pr_trianglestrip, tex_array[segment_array[i][2]]);
	draw_vertex_texture(x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad((i - 1) / segments, 0, 1, 1))) - segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 0 + lerp(0.5, 0, width / start_width), 1);
	draw_vertex_texture(x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad((i - 1) / segments, 0, 1, 1))) + segment_array[i - 1][0] + segment_array[i - 1][1], y - 20 * i, 1, 1);
	draw_vertex_texture(x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad(i / segments, 0, 1, 1))) - segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 0 + lerp(0.5, 0, width / start_width), 0);
	draw_vertex_texture(x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, wind_amount, ease_in_out_quad(i / segments, 0, 1, 1))) + segment_array[i][0] + segment_array[i][1], y - 20 * (i + 1), 1, 0);
	
	
draw_primitive_end();

if segment_array[i][3] != 0 {
	if segment_array[i][3].place = 1 {
			draw_sprite_ext(spr_tree_leaves, segment_array[i][3].leaf, x + (sin(0.001 * pi * sway) * lerp(0, 4, ease_in_out_quad(i / segments, 0, 1, 1))) + (wind * lerp(0, 20, ease_in_out_quad(i / segments, 0, 1, 1))) + (lerp(-0.3, 0.3, i / segments) * segment_array[i][3].dir * segment_array[i][0]) + segment_array[i][1] + (segment_array[i][3].dir * segment_array[i][3].leaf_x), y - (20 * i) - segment_array[i][3].leaf_y, segment_array[i][3].dir, 1, 0, c_white, 1);
		}
}



}

draw_sprite_ext(spr_tree_crown, 0, x + (4 * sin(0.001 * pi * sway)) + (wind * wind_amount) + segment_array[segments - 1][1], y - 20 * (segments), branch, 1, 0, layer_color, 1);

draw_sprite_ext(spr_tree_leaves, crown_leaf, x + (4 * sin(0.001 * pi * sway)) + (wind * wind_amount) + segment_array[segments - 1][1], y - 20 * (segments) - 30, branch, 1, 0, c_white, 1);



}