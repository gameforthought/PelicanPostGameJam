/// @description movement
// You can write your code in this editor

//get left or right key press and change variables accordingly
if instance_exists(obj_playerChar) {} else {
//get left or right key press and change variables accordingly
if (keyboard_check(vk_right)){
	//checks if turning vs starting from stopped position
	if hspd < 0 { 
		hspd += haccel + (haccel * abs(hspd));
	} else {
		hspd += haccel;
	}
	image_xscale = 1;
}

if (keyboard_check(vk_left)){
	if hspd > 0 { 
		hspd -= haccel + (haccel * abs(hspd));
	} else {
		hspd -= haccel;
	}
	image_xscale = -1;
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	if hspd != 0 {
    hspd -= sign(hspd) * 3 * haccel;
	}
	
	if (hspd > -0.2) && (hspd < 0.2) {
		hspd = 0;	
	}
}

hspd = clamp(hspd, -maxhspd, maxhspd);

x += hspd;
}

//wheel rotation
wheel_rotate -= (hspd / (29 * pi)) * 60;

//body rotation
if hspd > 0 {
	image_angle = 1;	
} else if hspd < 0 {
	image_angle = -1;
} else {
	image_angle = 0;
}
	