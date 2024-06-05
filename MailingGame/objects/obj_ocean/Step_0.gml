/// @description Insert description here
// You can write your code in this editor

if obj_time_tracker.sunset_bool = true {
	color = merge_color(day_color, night_color, obj_time_tracker.sunset_progress / 10);	
}

sin_pos = 8 * sin(step);

step += 0.01;

if irandom_range(0, 10) = 0 {
	var _pos = irandom_range(0, 50);
	var _reflect_x = 0;
	
	if _pos < 25 {
	_reflect_x = lerp(-170, 0, (-1 * power(((_pos / 25) - 1), 2) + 1));
	} else {
	_reflect_x = lerp(170, 0, (-1 * power(((_pos / 25) - 1), 2) + 1));	
	}
	
	var _reflect_y = irandom_range(0, 14 - (abs(_reflect_x) / 10));

	instance_create_depth(_reflect_x, _reflect_y, depth - 1, obj_ocean_highlight);

}


