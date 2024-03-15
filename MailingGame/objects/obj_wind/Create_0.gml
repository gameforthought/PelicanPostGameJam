/// @description Insert description here
// You can write your code in this editor

wind_step = 0;

wind_level = random_range(0.005, 0.01);

windy = false;

wind = 0;

global.wind = 0;

alarm[0] = irandom_range(60, 2000);

camera = view_get_camera(0);


