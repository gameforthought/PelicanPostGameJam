/// @description Insert description here
// You can write your code in this editor

if windy = true {
	wind_step += 1;	
} else {
	wind_step = 0;	
}

global.wind = sin(wind_level * wind_step);

if global.wind < 0 {
	windy = false;
	alarm[0] = irandom_range(60, 2000);
}

//fx_set_parameter(particles,"param_num_particles", 10 * global.wind);