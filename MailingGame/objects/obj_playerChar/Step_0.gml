/// @description movement
// You can write your code in this editor

//get left or right key press and change variables accordingly
if (keyboard_check(vk_right)){
    hspd += haccel;
	//image_xscale = 1;
}

if (keyboard_check(vk_left)){
    hspd -= haccel;
	//image_xscale = -1;
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)){
	if hspd != 0 {
    hspd -= sign(hspd) * 3 * haccel;
	
	if (hspd > -0.2) && (hspd < 0.2) {
		hspd = 0;	
	}
	}
}

hspd = clamp(hspd, -maxhspd, maxhspd);

x += hspd;
//show_debug_message(string(sign(hspd)))
if abs(hspd) > 0 {
	image_xscale = sign(hspd);
}


//jump
if ((keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))) {
	if (place_meeting(x, y, obj_colliderbox)) {
		yspd = -1 * jump_height;
		jump = true;
	}
}



y += yspd;

//ground collision
if (place_meeting(x, y + yspd, obj_colliderbox)) {
jump = false;
yspd = 0;


if abs(hspd) > 0 {
	if irandom_range(0, 8 / abs(hspd)) = 0 {
		instance_create_layer(x - (sign(hspd) * irandom_range(0, 10)), y, "dust", obj_grounddust);
	}
	
}


} else {
	if (yspd < jump_height) {
	yspd += grav;
	
}
}

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


if yspd = 0 {
	if abs(hspd) > 0 {
		walk = true;
		idle = false;
	} else {
		walk = false;
		idle = true;
	}
}

if walk = true && jump = false {
	sprite_index = spr_playerLegs_walk;
	image_speed = 0.25;
	swing_width = 40;
} else {
	image_speed = 0;
	if jump = true {
		sprite_index = spr_playerLegs_jump;
	} else {
		sprite_index = spr_playerLegs_idle;
		swing_width = 10;
	}
}

//swing arms
swing_num += 0.5 + 0.4 * abs(hspd);

swing = swing_width * sin(0.1 * swing_num);
