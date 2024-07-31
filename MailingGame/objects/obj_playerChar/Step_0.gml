/// @description Movement
// You can write your code in this editor
//checks if movement is paused

#region State Machine + Movement

	#region Pre-Movement Setup

	// Track if player is on ground
	onGround = place_meeting(x, y + 1, obj_colliderbox);
	
	// Update variables to store h/v speed of previous frame
	hspd_prev = hspd;
	yspd_prev = yspd;

	#endregion

switch (pepper_state)
{
	case PlayerState.FreeMove:
	
		#region Horizontal Movement
		
		// Get player input direction
		// (1 = right, 0 = none, -1 = left)
		var _moveDir = input_right_held() - input_left_held();
		
		// Move & face left/right
		hspd += haccel * _moveDir;
		if (_moveDir != 0) image_xscale = _moveDir;
		
		// Apply deceleration when not moving
		if (_moveDir == 0 && hspd != 0)
		{
			hspd -= sign(hspd) * 3 * haccel;
			
			// Round horizontal speed to 0
			if (hspd > -0.2) && (hspd < 0.2)
			{
				hspd = 0;
			}
		}
		
		// Clamp horizontal speed to maximum speed
		hspd = clamp(hspd, -maxhspd, maxhspd);
		
		#endregion
		
		#region Vertical Movement
		
		// Jump
		if (input_up_pressed() && onGround)
		{
			yspd = -jump_height;
			audio_play_sound(sd_jump,0,false);
			
			// Create dust particles when jumping
			for (var i = 0; i < 15; i += 1)
			{
				instance_create_layer(
					x - (image_xscale * irandom_range(-20, 30)),
					y + irandom_range(0, -6),
					"dust", obj_grounddust
				);
			}
		}
		
		#endregion
			
		break;
	
	// If pepper is in a cutscene, handle that movement here
	case PlayerState.CutsceneMove:
	
		// Once pepper reaches the destination, change states and face target
		if (abs(move_dest - x) < (maxhspd * 2))
		{
			pepper_state = PlayerState.NoMove;
			hspd = 0;
			
			var _door = instance_nearest(x,y, obj_door);
			image_xscale = sign(_door.x - x)
		}
		// Move pepper towards the destination if she hasn't reached it yet
		else
		{
			var _moveDir = sign(move_dest - x)
			hspd = maxhspd * _moveDir * 0.8;
			image_xscale = _moveDir;
		}
	
		break;
		
	case PlayerState.NoMove:
	
		break;
}

// Ground collision
if (place_meeting(x, y + yspd, obj_colliderbox))
{
	// Stop all vertical movement
	yspd = 0;
	
	// If player was in the air on the previous frame,
	// create dust particles when landing
	if (yspd_prev != 0)
	{
		for (var i = 0; i < 8; i += 1)
		{
			instance_create_layer(x - (image_xscale * irandom_range(-20 - (10 * abs(hspd)), 20)), y, "dust", obj_grounddust);
		}
	}
	
	// Create dust trail while moving
	if (abs(hspd) > 0)
	{
		if (irandom_range(0, 8 / abs(hspd)) = 0)
		{
			instance_create_layer(x - (image_xscale * irandom_range(5, 20)), y - 2, "dust", obj_grounddust);
		}
	}
}
else
{
	// Apply gravity in the air
	if (yspd < jump_height)
	{
		yspd += grav;
	}
}

// Apply h/v speed to player x/y
x += hspd;
y += yspd;

// Clamp x position to the start and end of the road (keep player from going out-of-bounds)
x = clamp(x, road_start, road_end);

#endregion

#region Animation

// Update character animation frame
char_anim += 1;

if (char_anim > 252)
{
	char_anim = 0;	
}

// Blink on frames 241-252
blink = char_anim > 240;


if (onGround && hspd != 0)
{
	// Play walk animation
	sprite_index = spr_playerLegs_walk;
	image_speed = lerp(0, 0.3, abs(hspd) / maxhspd);
	swing_width = 40;
} else {
	image_speed = 0;
	if (onGround)
	{
		// Play idle animation
		sprite_index = spr_playerLegs_idle;
		swing_width = 10;
	} else {
		// Play jump animation
		sprite_index = spr_playerLegs_jump;
	}
}

// Swing arms
swing_num += 0.5 + 0.4 * abs(hspd);

swing = swing_width * sin(0.1 * swing_num);


// emotion drawer

y_scale = 1 - (0.02 * cos(0.1 * char_anim));
if instance_exists(obj_textbox) && pepper_state = PlayerState.NoMove {
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

#endregion