/// @description Insert description here
// You can write your code in this editor
logo_alpha += alpha_change;
logo_alpha = clamp(logo_alpha, 0, 1);

if logo_alpha = 1 && alpha_change = 0.01 {
	alarm[1] = 80;
	alpha_change = 0;
}

if logo_alpha = 0 && alpha_change = -0.01 {
	alarm[2] = 60;
	alpha_change = 0;
}

obj_clock.clock_vis = false;