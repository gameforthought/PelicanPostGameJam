/// @description Insert description here
// You can write your code in this editor

//if wait = false {
move_step -= move_dir * 1.5;
//	visible = true;
//} else {
//	visible = false;	
//}

//if instance_number(obj_objective_modal) = 1 {
//	wait = false;	
//}

if move_step = 0 && move_dir = 1 {
	
	alarm[0] = 150;
	
	move_dir = 0;
	//show_debug_message("modal down")
	
}

move_step = clamp(move_step, 0, transition_time);

y_pos = lerp(256 - 27, 256 + 50, EaseInBack(move_step, 0, 1, transition_time));

if move_dir = 0 && complete = true {
	
	completeness += 1.5;
	completeness = clamp(completeness, 0, 218);
	
}

if move_step = transition_time && move_dir = -1 {
	
	instance_destroy();
	
}