/// @description Insert description here
// You can write your code in this editor

day_progress += 1;

if (day_progress > (sunset_start * day_length)) && (night_bool = false) {
	sunset_bool = true;
} else {
	sunset_bool = false;
}

if  (day_progress > (night_start * day_length)) {
	night_bool = true;
}

if sunset_bool = true {
	if sunset_progress < 10 {
		sunset_progress += 0.05;
		//show_debug_message("sunset")
	}
} else {
	if sunset_progress > 0 {
		sunset_progress -= 0.01;
	}
}

if night_bool = true {
	if night_progress < 10 {
		night_progress += 0.05;
	}
}

fx_set_parameter(sunset_balance,"g_ColourBalanceShadows", [lerp(0,0.2, sunset_progress / 10), lerp(0,-0.05, sunset_progress / 10), lerp(0,0.15, sunset_progress / 10)]);
fx_set_parameter(sunset_balance,"g_ColourBalanceMidtones", [lerp(0,0.15, sunset_progress / 10), lerp(0,0.05, sunset_progress / 10), 0]);
fx_set_parameter(sunset_balance,"g_ColourBalanceHighlights", [lerp(0,0.15, sunset_progress / 10), 0, 0]);


var _sunset_tint_col = merge_colour(c_white, sunset_color, sunset_progress / 10);
fx_set_parameter(sunset_tint, "g_TintCol", [color_get_red(_sunset_tint_col) / 255, color_get_green(_sunset_tint_col) / 255, color_get_blue(_sunset_tint_col) / 255, 1])


var _night_tint_col = merge_colour(c_white, night_color, night_progress / 10);
fx_set_parameter(night_tint, "g_TintCol", [color_get_red(_night_tint_col) / 255, color_get_green(_night_tint_col) / 255, color_get_blue(_night_tint_col) / 255, 1]);

if sunset_bool = true {
	colorA = merge_color(day_colorA, sunset_colorA, sunset_progress / 10);	
	colorB = merge_color(day_colorB, sunset_colorB, sunset_progress / 10);	
}

if night_bool =  true {
	colorA = merge_color(sunset_colorA, night_colorA, night_progress / 10);	
	colorB = merge_color(sunset_colorB, night_colorB, night_progress / 10);	
}