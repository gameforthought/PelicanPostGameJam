/// @description Insert description here
// You can write your code in this editor

//event_inherited();

//load_story("Susan");

if indicator = true && open = false && instance_exists(obj_playerChar) {
	if global.pause	= false || global.intro = true {
	alarm[0] = 16;
	open = true;
	}
}