/// @description Insert description here
// You can write your code in this editor



//load_story("Susan");

if indicator = true && open = false && instance_exists(obj_playerChar) {
	if !instance_exists(obj_truck) || !position_meeting(x - 24, y, obj_truck) {
	if !instance_exists(obj_title_screen) || obj_title_screen.start_shift = 1 {
	
	if global.pause	= false || global.intro = true {
	alarm[0] = 16;
	open = true;
	}
	
	}
	}
}