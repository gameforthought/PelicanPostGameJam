/// @description Insert description here
// You can write your code in this editor
surf = -1;

camera = view_get_camera(0);

wind = 0;
wind_mod = random_range(0.5, 1.2);
wind_amount = 20;

sway_time = random_range(0, 200);

leaves_array = [];

segments = irandom_range(10, 16);

darker_a = make_color_hsv(69, 33, 144);
darker_b = make_color_hsv(59, 90, 104);

if layer_get_name(layer) = "trees" {
	layer_color = darker_a;
	trunk_color = darker_b;
	//trunk_color = #4C503A;
} else {
	layer_color = c_white;
	trunk_color = darker_a;
	//trunk_color = #928D76;
}


texture = sprite_get_texture(spr_treeTex, 0);


//*
start_width = segments * 2;

growth_dir = irandom_range(-5, 5);
growth_val = 0;
growth_change = 0;
branch = choose(-1, 1);

crown_leaf = choose(-1, 1);

growth_val_array = [];
branch_array = [];

u_amount = shader_get_uniform(sh_wind, "u_amount");

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_texcoord();
vertex_format_add_color();
vertex_format_add_custom(vertex_type_float1, vertex_usage_texcoord);
format = vertex_format_end();

vbuff = vertex_create_buffer();
vertex_begin(vbuff, format);


for (var i = 0; i < segments; i += 1) {
	//width = lerp(start_width, 2, i / segments);
	width = lerp(start_width, 3, ease_in_out_quint(i / segments, 0, 1, 1));
	if (irandom_range(1, 2) = 1) {
		growth_dir = irandom_range(-2, 2);
	}
	
	if growth_change > growth_dir {
		growth_change -= abs(growth_dir - growth_change) / 3;
	} else if growth_change < growth_dir {
		growth_change += abs(growth_dir - growth_change) / 3;
	} else {
		growth_change = 0;	
	}
	growth_val += growth_change;
	
	
	var _branch_struct = -1;
	if (i = round((5 * segments) / 6)) {
	_branch_struct = {
			subimage: 1,
			x_displace: irandom_range(-6, 6),
			y_displace: irandom_range(-6, 6),
			dir: branch,
			wind_amount: ease_in_out_quad((i) / segments, 0, 10, 1)
		}
	
	branch *= -1;
	
	} else if (i = round((3 * segments) / 6)) || (i = round((4 * segments) / 6)) {
		 _branch_struct = {
			subimage: 0,
			x_displace: irandom_range(-2, 8),
			y_displace: irandom_range(-15, 15),
			dir: branch,
			wind_amount: ease_in_out_quad((i) / segments, 0, 10, 1)
		}
		
		branch *= -1;
		
	} else {
		 _branch_struct = -1;	
	}
	
	branch_array[i] = _branch_struct;
	
	
	var _base_width = lerp(start_width, 6, ease_in_out_quad(i / segments, 0, 1, 1));
	var _top_width = lerp(start_width, 6, ease_in_out_quad((i + 1) / segments, 0, 1, 1));
	
	var _base_weight =  ease_in_out_quad(i / segments, 0, 1, 1);
	var _top_weight = ease_in_out_quad((i + 1) / segments, 0, 1, 1);
	
	var x1 = x - (_base_width / 2) + growth_val - growth_change;
	var y1 = y - i * 20;
	var x2 = x1 + _base_width ;
	var y2 = y1;
	var x3 = x - (_top_width / 2) + growth_val;
	var y3 = y1 - 20;
	var x4 = x3 + _top_width;
	var y4 = y3;
	
	var uvs = sprite_get_uvs(spr_treeTex, irandom_range(0,4));
	var left = uvs[0];
	var top = uvs[1];
	var right = uvs[2];
	var bottom = uvs[3];
	
	var uv_left_bottom = lerp(left, right, ease_in_out_quad((i + 1) / segments, 0, 1 - (6 / start_width), 1));
	var uv_left_top = lerp(left, right, ease_in_out_quad(i / segments, 0, 1 - (6 / start_width), 1));
	
	//triangle 1
	vertex_position(vbuff, x1, y1);
	vertex_texcoord(vbuff, uv_left_top, top);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _base_weight);
	
	vertex_position(vbuff, x2, y2);
	vertex_texcoord(vbuff, right, top);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _base_weight);
	
	vertex_position(vbuff, x3, y3);
	vertex_texcoord(vbuff, uv_left_bottom, bottom);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _top_weight);
	
	//triangle 2
	vertex_position(vbuff, x2, y2);
	vertex_texcoord(vbuff, right, top);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _base_weight);
	
	vertex_position(vbuff, x4, y4);
	vertex_texcoord(vbuff, right, bottom);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _top_weight);
	
	vertex_position(vbuff, x3, y3);
	vertex_texcoord(vbuff, uv_left_bottom,bottom);
	vertex_color(vbuff, trunk_color, 1);
	vertex_float1(vbuff, _top_weight);
	
	array_push(growth_val_array, growth_val);
}

vertex_end(vbuff);
vertex_freeze(vbuff);







