/// @description Insert description here
// You can write your code in this editor

if (obj_menu_manager.hudAppear > 80) {
	clock_vis = true;
} else {
	clock_vis = false;
}

if clock_vis = true {
	clock_move_step -= 1;	
} else {
	clock_move_step += 1;
}

clock_move_step = clamp(clock_move_step, 0, transition_time);

y = EaseInBack_Smaller(clock_move_step, 256, 356, transition_time);