/// @description movement
// You can write your code in this editor
//checks if movement is paused
if global.pause = 0 {
//get left or right key press and change speed and orientation accordingly
if (keyboard_check(vk_right)) || (keyboard_check(ord("D"))){
	if (keyboard_check(vk_left)) || (keyboard_check(ord("A"))) {} else {
    hspd += haccel;
	}
	if hspd > 0 {
		image_xscale = 1;
	}
	
}

if (keyboard_check(vk_left)) || (keyboard_check(ord("A"))) {
	if (keyboard_check(vk_right)) || (keyboard_check(ord("D"))){} else {
    hspd -= haccel;
	}
	if hspd < 0 {
		image_xscale = -1;
	}
}
}




if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) && !keyboard_check(ord("D"))  && !keyboard_check(ord("A")){
	
	if hspd != 0 {
    hspd -= sign(hspd) * 3 * haccel;
	
	if (hspd > -0.2) && (hspd < 0.2) {
		hspd = 0;	
	}
	}
}

hspd = clamp(hspd, -maxhspd, maxhspd);


if (keyboard_check(vk_left) || keyboard_check(vk_right)) || keyboard_check(ord("D"))  || keyboard_check(ord("A")){



if hspd != 0 {

if hspd > hspd_prev {

	image_xscale = 1;
} else if hspd < hspd_prev {

	image_xscale = -1;
}

}

}


hspd_prev = hspd;





x += hspd;

x = clamp(x, road_start, road_end);
//show_debug_message(string(sign(hspd)))



//jump
if ((keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W")))) {
	if (place_meeting(x, y, obj_colliderbox)) {
		yspd = -1 * jump_height;
		jump = true;
		for (var i = 0; i < 15; i += 1) {
			if jump = true {
				instance_create_layer(x - (image_xscale * irandom_range(-20, 30)), y + irandom_range(0, -6), "dust", obj_grounddust);
			}
		}
	}
}



y += yspd;

//ground collision
if (place_meeting(x, y + yspd, obj_colliderbox)) {
for (var i = 0; i < 8; i += 1) {
	if jump = true {
		instance_create_layer(x - (image_xscale * irandom_range(-20 - (10 * abs(hspd)), 20)), y, "dust", obj_grounddust);
	}
}
jump = false;
yspd = 0;


if abs(hspd) > 0 {
	if irandom_range(0, 8 / abs(hspd)) = 0 {
		instance_create_layer(x - (image_xscale * irandom_range(5, 20)), y - 2, "dust", obj_grounddust);
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
	image_speed = lerp(0, 0.3, abs(hspd) / maxhspd);
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


// emotion drawer

y_scale = 1 - (0.02 * cos(0.1 * char_anim));
if instance_exists(obj_textbox) {
	if emotion_drawer = -1 {
		var _struct = {
			parent: id,	
			eye_y: -4,
		}
		emotion_drawer = instance_create_depth(x, y, layer_get_depth(layer) - 1, obj_prof_char_emote, _struct);	
	}
} else {
	if emotion_drawer != -1 {
		instance_destroy(emotion_drawer);
		emotion_drawer = -1;
	}
}

if emotion_drawer != -1 {
	blink = 2;
}