/// @description Insert description here
// You can write your code in this editor

leaves_array = [];

segments = irandom_range(10, 16);

tex_array = [];

for (var i = 0; i < 4; i += 1) {
array_push(tex_array, sprite_get_texture(spr_treeTex, i));
}

start_width = segments * 1.3;

growth_dir = irandom_range(-5, 5);
growth_val = 0;
growth_change = 0;
branch = choose(-1, 1);

crown_leaf = irandom_range(0, 3);

big_leaves = irandom_range(1, 3);

segment_array = [];

for (var i = 0; i < segments; i += 1) {
	//width = lerp(start_width, 2, i / segments);
	width = lerp(start_width, 3, ease_in_out_quad(i / segments, 0, 1, 1));
	
	
	
	if (irandom_range(1, 2) = 1) {
		growth_dir = irandom_range(-8, 8);
	}
	
	if growth_change > growth_dir {
		growth_change -= abs(growth_dir - growth_change) / 3;
	} else if growth_change < growth_dir {
		growth_change += abs(growth_dir - growth_change) / 3;
	} else {
		growth_change = 0;	
	}
	
	
	growth_val += growth_change;
	
	var _branch_struct;
	if (i = round((2 * segments) / 5)) || (i = round((3 * segments) / 5)) || (i = round((4 * segments) / 5)) {
		 _branch_struct = {
			subimage: irandom_range(0, 3),
			place: choose(0, 1),
			dir: branch,
			leaf: irandom_range(0, 3)
		}
		switch _branch_struct.subimage {
			case 0:
				_branch_struct.leaf_x = 40;
				_branch_struct.leaf_y = 56;
			break;
			case 1:
				_branch_struct.leaf_x = 85;
				_branch_struct.leaf_y = 47;
			break;
			case 2:
				_branch_struct.leaf_x = 17;
				_branch_struct.leaf_y = 69;
				_branch_struct.place = 0;
			break;
			case 3:
				_branch_struct.leaf_x = 50;
				_branch_struct.leaf_y = 28;
			break;
		}
		
		branch *= -1;
	} else {
		 _branch_struct = 0;	
	}
	
	
	array_push(segment_array, [width, growth_val, irandom_range(0, 3), _branch_struct]);
}





