
var wind =  global.wind * 1.5;
var sway = 0.5 * (sin(0.001 * pi * sway_time));


if (x > obj_camera_manager.camera_target - 620) && (x < obj_camera_manager.camera_target + 620) {
//canopy leaves
draw_sprite_ext(spr_tree_leaves, big_leaves, x + growth_val_array[(round(segments * 0.85))] + 8.5 * (wind + sway), y - (20 * (round(segments * 0.85))), 1.5, 1.5, 0, darker_b, 1);

//branches and leaves behind trunk
for (var i = 1; i < segments; i += 1) {
	
	if branch_array[i] != -1 {
		
		var wind_amount = branch_array[i].wind_amount;
		
		draw_sprite_ext(spr_tree_branch, branch_array[i].subimage, x + growth_val_array[i] + wind_amount * (wind + sway), y - 20 * i, branch_array[i].dir, 1, 0, layer_color, 1);
		
		if branch_array[i].place = 0 {
			draw_sprite_ext(spr_tree_leaves, branch_array[i].leaf, x + growth_val_array[i] + (branch_array[i].dir * branch_array[i].leaf_x) + wind_amount * (wind + sway), y - (20 * i) - branch_array[i].leaf_y, branch_array[i].dir * 1.3, 1.3, 0, darker_a, 1);
		}
	}
}

//trunk
shader_set(sh_wind);
shader_set_uniform_f(u_amount, wind + sway);
vertex_submit(vbuff, pr_trianglelist, texture);
draw_set_color(c_black);
shader_reset();

//crown
draw_sprite_ext(spr_tree_crown, 0, x + growth_val_array[segments - 1] + 10 * (wind + sway), y - 20 * (segments), 1, 1, 0, layer_color, 1);
draw_sprite_ext(spr_tree_leaves, crown_leaf, x + growth_val_array[segments - 1] + 10 * (wind + sway), y - 20 * (segments) - 30, 1.3, 1.3, 0, c_white, 1);


//leaves before trunk
for (var i = 1; i < segments; i += 1) {
	if branch_array[i] != -1 {
		
		var wind_amount = branch_array[i].wind_amount;
		
		if branch_array[i].place = 1 {
			draw_sprite_ext(spr_tree_leaves, branch_array[i].leaf, x + growth_val_array[i] + (branch_array[i].dir * branch_array[i].leaf_x) + wind_amount * (wind + sway), y - (20 * i) - branch_array[i].leaf_y, branch_array[i].dir * 1.3, 1.3, 0, c_white, 1);
		}
	}
}


}

