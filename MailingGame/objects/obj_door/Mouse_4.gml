/// @description when clicked, start the interaction
// You can write your code in this editor

//when clicked, make a textbox visible
if indicator = true && instance_exists(obj_textbox) = false {
//if open = false {
//		open = true;
//	} else {
//		open = false;
//	}
	
	if alarm[0] = -1 {
		alarm[0] = knock_time;
	} else if alarm[0] > 20 {
		alarm[0] -= 10;	
	}
	
}
