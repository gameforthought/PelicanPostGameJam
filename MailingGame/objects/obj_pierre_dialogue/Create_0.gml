/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

knock_amount = 0;

indicator = false;
bounce = 0;
step = 0;

knock_time = 0;
hearing = 100;

if global.intro = true {
	story = "pie1";
}

if obj_timeTracker.night_bool = true {
	story = "pie2";
}
character = obj_pierre.emotion_drawer;

image_alpha = 0;