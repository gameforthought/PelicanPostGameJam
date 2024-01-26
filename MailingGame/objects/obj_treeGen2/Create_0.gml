/// @description Insert description here
// You can write your code in this editor

leaves_array = [];

segments = irandom_range(12, 20);

tex_array = [];

for (var i = 0; i < 4; i += 1) {
array_push(tex_array, sprite_get_texture(spr_treeTex, i));
}

start_width = segments * 1.3;

growth_dir = irandom_range(-5, 5);
growth_val = 0;
growth_change = 0;
branch = 0;

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
	
	
	array_push(segment_array, [width, growth_val, irandom_range(0, 3)]);
}





