/// @description Insert description here
// You can write your code in this editor

wheel_rotate -= (hspd / (17 * pi)) * 60;

hspd = dir * ease_in_out_quad(lerp(1, 0, (distance_to_point(room_width / 2, y)) / (room_width / 2)), 0, 3, 1);

if (distance_to_point(0, y) < 12) || (distance_to_point(room_width, y) < 12) {
	dir *= -1;
	x += 2 * dir;
}


x += hspd;

//body squashing
if hspd = 0.1 {
		squash = 0;
	} else {
	squash += lerp(0, 0.5, abs(hspd) / 3);	
}


image_yscale = 1 - (0.02 * sin(0.3 * squash));