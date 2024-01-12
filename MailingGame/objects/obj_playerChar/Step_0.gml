/// @description movement
// You can write your code in this editor

//get left or right key press and change variables accordingly
if (keyboard_check(vk_right)){
    hspd += haccel;
	image_xscale = 1;
}

if (keyboard_check(vk_left)){
    hspd -= haccel;
	image_xscale = -1;
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	if hspd != 0 {
    hspd -= sign(hspd) * 2 * haccel;
	}
}

hspd = clamp(hspd, -maxhspd, maxhspd);

x += hspd;


//jump
if ((keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))) {
	if (place_meeting(x, y, obj_colliderbox)) {
		yspd = -1 * jump_height;
	}
}



y += yspd;

//ground collision
if (place_meeting(x, y + yspd, obj_colliderbox)) {

yspd = 0;
} else {
	if (yspd < jump_height) {
	yspd += grav;	
}
}