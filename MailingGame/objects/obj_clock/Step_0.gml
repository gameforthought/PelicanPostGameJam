/// @description Insert description here
// You can write your code in this editor

if clock_vis = true {
	clock_move_step -= 1;	
} else {
	clock_move_step += 1;
}

clock_move_step = clamp(clock_move_step, 0, transition_time);

y = EaseInBack_Smaller(clock_move_step, 256, 356, transition_time);

if global.pause = 0 {
	if (keyboard_check(vk_left) || keyboard_check(vk_right)) || keyboard_check(ord("D"))  || keyboard_check(ord("A")){
		alarm[0] = 160;	
		clock_vis = false;
	}
} else {
	clock_vis = false;
	alarm[0] = 240;
}