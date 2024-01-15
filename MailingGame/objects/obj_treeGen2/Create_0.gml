/// @description Insert description here
// You can write your code in this editor

leaves_array = [];

segments = irandom_range(12, 20);

tex_array = [];

for (var i = 0; i < 4; i += 1) {
array_push(tex_array, sprite_get_texture(spr_treeTex, i));
}

start_width = irandom_range(20, 30);

growth_dir = irandom_range(-5, 5);
growth_val = 0;
growth_change = 0;
branch = 0;

segment_array = [];

for (var i = 0; i < segments; i += 1) {
	width = lerp(start_width, 1, i / segments) + random_range(-1, 1);
	
	if (irandom_range(1, 3) = 1) {
		growth_dir = irandom_range(-10, 10);
	}
	
	if growth_change > growth_dir {
		growth_change -= abs(growth_dir - growth_change) / 3;
	} else if growth_change < growth_dir {
		growth_change += abs(growth_dir - growth_change) / 3;
	} else {
		growth_change = 0;	
	}
	
	
	growth_val += growth_change;
	var _branch_length = lerp(6, 1, i / segments)
	
	if (random_range(0, lerp(25, 3, i / segments)) < 1) && (i > 3) && (i < segments - 4) {
		branch = choose(-1 * _branch_length, _branch_length);
		show_debug_message(string(x) + " " + string(branch))
	} else {
		branch = 0;
	}
	
	
	array_push(segment_array, [width, growth_val, branch, irandom_range(0, 3)]);
}

branch_check = 0;

for (var i = 0; i < array_length(segment_array); i += 1) {
	branch_check += abs(segment_array[i][2]);
}

if (branch_check = 0) {
	segment_array[irandom_range(5, array_length(segment_array))][2]	= choose(-2, 2);
}




