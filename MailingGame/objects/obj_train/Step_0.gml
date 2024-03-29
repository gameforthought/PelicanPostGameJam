/// @description Insert description here
// You can write your code in this editor

wheel_rotate -= (hspd / (17 * pi)) * 60;

hspd = dir * ease_in_out_quad(lerp(1, 0, (distance_to_point((station_b.x + 160) / 2, y)) / ((station_b.x + 160 - (station_a.x - 140)) / 1)), 0, 3, 1);

if (distance_to_point(station_a.x - 140, y) < 14) || (distance_to_point(station_b.x + 160, y) < 12) {
	dir *= -1;
	x += 3 * dir;
}


x += hspd;

//body squashing
if hspd = 0.1 {
		squash = 0;
	} else {
	squash += lerp(0, 0.5, abs(hspd) / 3);	
}


image_yscale = 1 - (0.02 * sin(0.3 * squash));


//character animation
char_anim += 1;

if char_anim > 252 {
char_anim = 0;	
}

if char_anim > 240 {
blink = 1;	
} else {
	blink = 0;
}

if wave = 1 {
	wave_anim += 1;
	blink = 1;
	
	if wave_anim > 200 {
		wave = 0;
		wave_anim = 0;
	}
}