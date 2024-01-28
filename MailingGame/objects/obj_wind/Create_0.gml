/// @description Insert description here
// You can write your code in this editor

//particles = layer_get_fx("windy");


wind_step = 0;

wind_level = random_range(0.005, 0.01);

windy = false;

global.wind = 0;

alarm[0] = irandom_range(60, 2000);