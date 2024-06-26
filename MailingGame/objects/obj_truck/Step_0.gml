/// @description activates every frame
// You can write your code in this editor

//checks if movement is paused
if global.pause = 0 {

//get left or right key press and change variables accordingly
if instance_exists(obj_playerChar) {} else {
	audio_stop_sound(sd_truck);
	if !audio_is_playing(sd_truck) {
	audio_play_sound(sd_truck, 0, true);	
	}
	audio_sound_gain(sd_truck, 0.6 * (abs(hspd) / 8), 0);
if (truck_state == PlayerState.FreeMove){
//get left or right key press and change variables accordingly
if (keyboard_check(vk_right)) || (keyboard_check(ord("D"))) {
	if x = road_start {
	x += 1;	
	}
	
	//checks if turning vs starting from stopped position
	if hspd < 0 { 
		hspd += haccel + (haccel * abs(hspd));
	} else {
		hspd += haccel;
	}
	image_xscale = 1;
}



	if (keyboard_check(vk_left)) || (keyboard_check(ord("A"))) {
		if x = road_end {
		x -= 1;	
		}
	
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
	show_debug_message("Truck speed: " + string(hspd));
	hspd = clamp(hspd, -maxhspd, maxhspd);
}
//if the truck is in cutscene state, move it to the destination
else if (truck_state == PlayerState.CutsceneMove){
	show_debug_message("Parking!");
	//if the truck is already close to the parking spot, slow it down
	if (abs(parking_dest - x) < parking_lenience){
		//check if 
		_sign = sign(hspd);
		hspd -= sign(hspd) * haccel * 5;
		
		if (_sign != sign(hspd)){
			hspd = 0;
			
			ExitTruck();
		}
	}
	//else move the truck closer to the parking spot
	else {
		hspd += sign(parking_dest - x) * haccel / 2;
	}
}


//if the player is at the end of the road, don't let them move past it
if x = road_start || x = road_end {
	hspd = 0;

	//also exit the truck if hitting the end of the road in cutscene mode
	if (truck_state == PlayerState.CutsceneMove){
		ExitTruck();
	}
}

x += hspd;
x = clamp(x, road_start, road_end);






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

if instance_exists(obj_playerChar) {
	if distance_to_point(obj_playerChar.x, y) < 30 {
		clickable = true;	
	} else {
		clickable = false;
	}
} else {
	if hspd = 0 {
		clickable = true;
	} else {
		clickable = false;
	}
}

//disapear during dialogue
if instance_exists(obj_textbox) {
	textbox_alpha -= 0.02;
} else {
	textbox_alpha += 0.02;
}

textbox_alpha = clamp(textbox_alpha, 0, 1);
image_alpha = textbox_alpha;

//speedlines controls
var layer_id = layer_get_id("speedlines");
var bg_id = layer_background_get_id(layer_id);

layer_background_alpha(bg_id, lerp(0, 0.5 - 0.05 * (obj_time_tracker.sunset_progress / 10) - 0.08 * (obj_time_tracker.night_progress / 10), (abs(hspd)) /maxhspd));
layer_hspeed(layer_id, -hspd / 1.5);



	