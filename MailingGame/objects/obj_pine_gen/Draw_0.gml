
var wind =  global.wind * 1.5;
var sway = 0.5 * (sin(0.001 * pi * sway_time));


if (x > obj_camera_manager.camera_target - 620) && (x < obj_camera_manager.camera_target + 620) {

//branches and leaves behind trunk
for (var i = 1; i < segments; i += 1) {
	if branch_array[i] != -1 {
		
		var wind_amount = branch_array[i].wind_amount;
		
		
		draw_sprite_ext(spr_evergreen, branch_array[i].subimage,
		x + growth_val_array[i] - branch_array[i].x_displace + wind_amount * (wind + sway),
		y - (20 * i) + branch_array[i].y_displace,
		branch_array[i].dir * -1, 1, 0, darker_a, 1);
		
	}
}


//trunk
shader_set(sh_wind);
shader_set_uniform_f(u_amount, wind + sway);
vertex_submit(vbuff, pr_trianglelist, texture);
draw_set_color(c_black);
shader_reset();

//crown
draw_sprite_ext(spr_evergreen, 2, x + growth_val_array[segments - 1] + 10 * (wind + sway), y - 20 * (segments), crown_leaf, 1, 0, layer_color, 1);
//draw_sprite_ext(spr_tree_leaves, crown_leaf, x + growth_val_array[segments - 1] + 10 * (wind + sway), y - 20 * (segments) - 30, 1.3, 1.3, 0, c_white, 1);


//leaves before trunk
for (var i = 1; i < segments; i += 1) {
	if branch_array[i] != -1 {
		
		var wind_amount = branch_array[i].wind_amount;
		
		
		draw_sprite_ext(spr_evergreen, branch_array[i].subimage,
		x + growth_val_array[i] + (branch_array[i].x_displace * branch_array[i].dir) + wind_amount * (wind + sway),
		y - (20 * i) - branch_array[i].y_displace,
		branch_array[i].dir * 1, 1, 0, c_white, 1);
		
	}
}


}

