/// @description activates every frame
// You can write your code in this editor

//checks if movement is paused
//if global.pause = 0 {

#region State Machine + Movement

// While truck is in control...
if (player_exists())
{
	// Truck movement sounds
	audio_stop_sound(sd_truck);
	if !audio_is_playing(sd_truck)
	{
		audio_play_sound(sd_truck, 0, true);	
	}
	audio_sound_gain(sd_truck, 0.6 * (abs(hspd) / 8), 0);
	
	// Do state machine
	switch (truck_state)
	{
		case PlayerState.FreeMove:
		
			#region Horizontal Movement
			
			// Get player input direction
			// (1 = right, 0 = none, -1 = left)
			var _moveDir = input_right_held() - input_left_held();
			
			// While moving, face move direction and accelerate
			if (_moveDir != 0)
			{
				// Add acceleration rate to horizontal speed
				// NOTE: horizontal speed will later be capped
				hspd += haccel * _moveDir;
				
				// Accelerate FASTER while turning
				// NOTE: This behavior is exclusive to the truck's movement
				if (sign(hspd) != _moveDir)
				{
					hspd += haccel * abs(hspd) * _moveDir;
				}
				
				// Face moving direction
				image_xscale = _moveDir;
			}
			
			// Apply deceleration when not moving
			if (_moveDir == 0 && hspd != 0)
			{
				// Subtract decelration rate from horizontal speed
				hspd -= sign(hspd) * hdecel;
				
				// If below minimum speed, set speed to 0
				if (hspd * sign(hspd) < minhspd) hspd = 0;
			}
			
			// Clamp horizontal speed to maximum speed
			hspd = clamp(hspd, -maxhspd, maxhspd);
			
			// Horizontal movement and collision with barrier object
			if (place_meeting(x + hspd, y, obj_truck_barrier))
			{
				while (!place_meeting(x + sign(hspd), y, obj_truck_barrier))
				{
					x += sign(hspd);
				}
				hspd = 0;
			}
			
			#endregion
		
			break;
			
		case PlayerState.CutsceneMove:
		
			// If the truck is already close to the parking spot, slow it down...
			if (abs(parking_dest - x) < parking_lenience)
			{
				// Get direction of horizontal speed
				var _initialDir = sign(hspd);
				// Apply deceleration
				hspd -= sign(hspd) * hdecel * 2;
			
				// If moved to or past parking spot, park truck
				if (_initialDir != sign(hspd))
				{
					hspd = 0;
					ExitTruck();
				}
			}
			// ...else move the truck closer to the parking spot
			else
			{
				hspd += sign(parking_dest - x) * haccel / 2;
			}
			
			// Exit truck if colliding with barrier
			if (place_meeting(x + hspd, y, obj_truck_barrier))
			{
				hspd = 0;
				ExitTruck();
			}
			break;
	}
	
	x += hspd;

	#endregion

	//dust
	if (abs(hspd) > 0)
	{
		if (irandom_range(0, 5 / abs(hspd)) = 0)
		{
			instance_create_layer(x - (sign(hspd) * 70) - (sign(hspd) * irandom_range(0, 20)), y, "truck_dust", obj_grounddust);
		}
	}



	//body squashing
	if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) && !keyboard_check(ord("D"))  && !keyboard_check(ord("A"))
	{
		if (dismount_anim = false)
		{
			squash = 0;
		}
	}
	else
	{
		squash += 1;	
	}
}
//pause}

if (dismount_anim = true)
{
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

var layer2_id = layer_get_id("speedlines2");
var bg2_id = layer_background_get_id(layer2_id);



layer_background_alpha(bg_id, lerp(0, 0.5 - 0.05 * (obj_time_tracker.sunset_progress / 10) - 0.08 * (obj_time_tracker.night_progress / 10), (abs(hspd)) /maxhspd));
layer_hspeed(layer_id, -hspd / 1.5);

layer_background_alpha(bg2_id, lerp(0, 0.5 - 0.05 * (obj_time_tracker.sunset_progress / 10) - 0.08 * (obj_time_tracker.night_progress / 10), (abs(hspd)) /maxhspd));
layer_hspeed(layer2_id, -hspd / 0.75);



	