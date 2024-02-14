/// @description Insert description here
// You can write your code in this editor

day_progress = 0;

sunset_progress = 0;
night_progress = 0;

sunset_bool = false;
night_bool = false;

sunset_tint = layer_get_fx("sunset_tint");
sunset_balance = layer_get_fx("sunset_balance");

night_tint = layer_get_fx("night_tint");

day_colorA = #228ba2;
day_colorB = #81d7de;

sunset_colorA = #8a80c5;
sunset_colorB = #b96787;

night_colorA = #0b2b46;
night_colorB = #655c6f;

colorA = day_colorA;
colorB = day_colorB;

camera = view_get_camera(0);

star_array = [];
star_step = 0;



for (var i = 0; i < 50; i += 1) {	

	var _star_struct_A = {
		xpos: irandom_range(0, 480),
		ypos: irandom_range(0, 256),
		step: irandom_range(0, 600)
	};
	
	var _star_struct_B = {
		xpos: irandom_range(0, 480),
		ypos: irandom_range(0, 256),
		step: irandom_range(0, 600)
	};
	
	array_push(star_array, _star_struct_A);
	
	if point_distance(_star_struct_A.xpos, _star_struct_A.ypos, _star_struct_B.xpos, _star_struct_B.ypos) < 40 {
		array_push(star_array, _star_struct_B);
	}
	

}
