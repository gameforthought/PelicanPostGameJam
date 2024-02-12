/// @description Insert description here
// You can write your code in this editor

camera = view_get_camera(0);

day_color = #11787F;
night_color = #464c57;

color = day_color;

step = 0;
sin_pos = 0;

reflect_array = [];

for (var i = 0; i < 40; i += 1) {
	//var _reflect_x = ease_in_out_quad(-1 * power(((i / 40) - 1), 2), -200, 200, 1);
	var _reflect_x = lerp(-200, 200, (-1 * power(((i / 40) - 1), 2) + 1));
	show_debug_message(string((-1 * power(((i / 40) - 1), 2) + 1)));
	var _reflect_y = irandom_range(0, 25 - (abs(_reflect_x) / 8));
	
var _reflect_struct = {
		ref_x: _reflect_x,
		ref_y: _reflect_y,
		dir: choose(-1, 1),
	};
array_push(reflect_array, _reflect_struct);
}


