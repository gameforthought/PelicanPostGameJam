/// @description Insert description here
// You can write your code in this editor

//

// 080,	080,	185,	0.80,	0.60,  -0.15,	0.20,	0.80);

if obj_timeTracker.sunset_bool = true {
color_mix = [lerp(128/255, sunset_color[0], obj_timeTracker.sunset_progress / 10), 
			lerp(128/255, sunset_color[1], obj_timeTracker.sunset_progress / 10), 
			lerp(128/255, sunset_color[2], obj_timeTracker.sunset_progress / 10)];		

con_sat_brt_mix	= [lerp(1, sunset_col_param[0], obj_timeTracker.sunset_progress / 10), 
				lerp(1, sunset_col_param[1], obj_timeTracker.sunset_progress / 10), 
				lerp(0, sunset_col_param[2], obj_timeTracker.sunset_progress / 10)];

} else if obj_timeTracker.night_bool = true {
color_mix = [lerp(sunset_color[0], night_color[0], obj_timeTracker.night_progress / 10), 
			lerp(sunset_color[1], night_color[1], obj_timeTracker.night_progress / 10), 
			lerp(sunset_color[2], night_color[2], obj_timeTracker.night_progress / 10)];		

con_sat_brt_mix	= [lerp(sunset_col_param[0], night_col_param[0], obj_timeTracker.night_progress / 10), 
				lerp(sunset_col_param[1], night_col_param[1], obj_timeTracker.night_progress / 10), 
				lerp(sunset_col_param[2], night_col_param[2], obj_timeTracker.night_progress / 10)];

} else {
	color_mix = [128/255, 128/255, 128/255];
	con_sat_brt_mix	= [1, 1, 0, 0, 1];
}

light = lerp(0, 0.5,  obj_timeTracker.night_progress / 10);