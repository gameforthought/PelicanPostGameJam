/// @description movement
// You can write your code in this editor

//get left or right key press and change variables accordingly
if instance_exists(obj_playerChar) {} else {
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
}