/// @description variable definitions
// You can write your code in this editor

#region Player Manager

	// TEMP: spawn this truck with character spawner later
	player = undefined;

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
	// If gameplay is paused, do not take certain inputs.
	// If this character is not linked to the player manager, do not take input.
	input_left_held = function()
	{
		//if (GameplayPaused()) return false;
		
		if (player_exists())
		{
			return player.input_left_held();
		}
		return false;
	}
	input_right_held = function()
	{
		//if (GameplayPaused()) return false;
		
		if (player_exists())
		{
			return player.input_right_held();
		}
		return false;
	}
	input_up_pressed = function()
	{
		//if (GameplayPaused()) return false;
		
		if (player_exists())
		{
			return player.input_up_pressed();
		}
		return false;
	}

#endregion

hspd = 0;
image_speed = 0.01;

textbox_alpha = 1;

wheel_rotate = 0;

squash = 0;

char_anim = 0;
blink = 0;

dismount_anim = false;

clickable = false;

road_start = instance_find(obj_truck_barrier, 0).x + 120;
road_end = instance_find(obj_truck_barrier, 1).x - 120;