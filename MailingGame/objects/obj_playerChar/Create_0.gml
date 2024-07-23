/// @description variable definitions
// You can write your code in this editor

#region Player Manager

	// !! TEMPORARY, DON'T ALWAYS WANT TO CREATE CHARACTERS W/ ASSIGNED PLAYER !!
	player = obj_player_manager;

	// Check if this character has a reference to the player manager and it exists
	player_exists = function()
	{
		return (player != undefined && instance_exists(player));
	}

	// Unlink the player manager from this character and remove its reference to this character
	player_remove = function()
	{
		if(player_exists())
		{
			player.character_remove();
			player = undefined;
		}
	}

#endregion

#region Input

	// Get input from player manager.
	// If this character is not linked to the player manager, do not take input.
	input_left_held = function()
	{
		if (player_exists())
		{
			return player.input_left_held();
		}
		return false;
	}
	input_right_held = function()
	{
		if (player_exists())
		{
			return player.input_right_held();
		}
		return false;
	}
	input_up_pressed = function()
	{
		if (player_exists())
		{
			return player.input_up_pressed();
		}
		return false;
	}

#endregion

hspd = 0;
hspd_prev = 0;

//initializing movement stats
road_start = 0;
road_end = room_width;

if room = demo_room {
	road_start = 210;
	road_end = room_width;
}

if room = post_office {
	road_start = 58;
	road_end = room_width - 60;
}

yspd = 0;

if instance_exists(obj_truck) = true {	
	obj_truck.alarm[0] = 20;
	obj_truck.dismount_anim = true;
	
}

if variable_instance_exists(id, "start_orient") {
	image_xscale = start_orient;	
} else {
	image_xscale = -1;	
}


char_anim = 0;
blink = 0;

walk = false;

idle = true;

jump = false;

swing_num = 0;
swing = 0;
swing_width = 10;

emotion_drawer = -1;
y_scale = 1;


inventory = -1;
//if instance_exists(obj_inventory) {
//	inventory = obj_inventory.inventory[0];
//}



