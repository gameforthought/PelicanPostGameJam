/// @description Insert description here
// You can write your code in this editor

leaves_array = [];

segments = irandom_range(10, 15);

tex = sprite_get_texture(spr_treeTex, 0);

start_width = irandom_range(10, 20);

growth_dir = irandom_range(-5, 5);
growth_val = 0;
growth_change = 0;
branch = 0;

segment_array = [];

for (var i = 0; i < segments; i += 1) {
	width = lerp(start_width, 1, i / segments) + random_range(-1, 1);
	
	if irandom_range(1, 5) = 1 {
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
	
	if random_range(0, lerp(25, 1, i / segments)) < 1 {
		branch = irandom_range(-6, 6);
		show_debug_message(string(x) + " " + string(branch))
	} else {
		branch = 0;
	}
	
	
	array_push(segment_array, [width, growth_val, branch]);
}




