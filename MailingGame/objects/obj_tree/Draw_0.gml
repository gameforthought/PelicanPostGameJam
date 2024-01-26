for (var i = 0; i < tree_height; i += 1) {
	if tree_struct_array[i].change = false {
		draw_sprite_ext(spr_tree_trunk, 0, x, y - (i * 50), tree_direction, 1, 0, c_white, 1);	
	} else {
		draw_sprite_ext(spr_tree_switch, 0, x, y - (i * 50), tree_direction, 1, 0, c_white, 1);	
	}
	
	tree_direction *= tree_struct_array[i].dir;
	
}

tree_direction = tree_direction_start;