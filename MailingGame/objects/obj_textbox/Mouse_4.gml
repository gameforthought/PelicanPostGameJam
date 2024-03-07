/// @description Insert description here
// You can write your code in this editor

//text_to_display = "HI";
if (ink_can_continue()){
	//text_to_display = ink_continue();
	next_line();
}
else {
	obj_timeTracker.day_progress += 1;
	obj_door.open = false;
	global.pause = 0;
	instance_destroy();
}