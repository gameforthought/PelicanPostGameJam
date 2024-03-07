/// @description Insert description here
// You can write your code in this editor

star_step += 1;

if day_progress = sunset_start {
	sunset_bool = true;
} else {
	sunset_bool = false;
}

if  (day_progress > sunset_start) {
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




if sunset_bool = true {
	colorA = merge_color(day_colorA, sunset_colorA, sunset_progress / 10);	
	colorB = merge_color(day_colorB, sunset_colorB, sunset_progress / 10);	
}

if night_bool =  true {
	colorA = merge_color(sunset_colorA, night_colorA, night_progress / 10);	
	colorB = merge_color(sunset_colorB, night_colorB, night_progress / 10);	
}