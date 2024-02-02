/// @description activates every frame
// You can write your code in this editor

//get left or right key press and change variables accordingly
if instance_exists(obj_playerChar) {} else {
//get left or right key press and change variables accordingly
if (keyboard_check(vk_right)) || (keyboard_check(ord("D"))) {
	//checks if turning vs starting from stopped position
	if hspd < 0 { 
		hspd += haccel + (haccel * abs(hspd));
	} else {
		hspd += haccel;
	}
	image_xscale = 1;
}

if (keyboard_check(vk_left)) || (keyboard_check(ord("A"))) {
	if hspd > 0 { 
		hspd -= haccel + (haccel * abs(hspd));
	} else {
		hspd -= haccel;
	}
	image_xscale = -1;
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) && !keyboard_check(ord("D"))  && !keyboard_check(ord("A")){
	if hspd != 0 {
    hspd -= sign(hspd) * 3 * haccel;
	}
	
	if (hspd > -0.2) && (hspd < 0.2) {
		hspd = 0;	
	}
}

hspd = clamp(hspd, -maxhspd, maxhspd);

x += hspd;


//dust
if abs(hspd) > 0 {
	if irandom_range(0, 5 / abs(hspd)) = 0 {
		instance_create_layer(x - (sign(hspd) * 70) - (sign(hspd) * irandom_range(0, 20)), y, "truck_dust", obj_grounddust);
	}
}



//body squashing
if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) && !keyboard_check(ord("D"))  && !keyboard_check(ord("A")){
	if dismount_anim = false {
		squash = 0;
	}
} else {
	squash += 1;	
}



}

if dismount_anim = true {
	squash += 1;
	
}

image_yscale = 1 - (0.02 * sin(0.3 * squash));

//wheel rotation
wheel_rotate -= (hspd / (30 * pi)) * 60;

//body rotation
image_angle = hspd / 3;

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



	