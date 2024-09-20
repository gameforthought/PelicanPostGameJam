/// @description Insert description here
// You can write your code in this editor

button_types = array;
length = array_length(button_types);
button_array = [];

windowScale = 2;

//ride button bunction
ride_func = function() {
	if !instance_exists(obj_room_transition) {
		obj_truck.alarm[0] = 20;
		obj_truck.dismount_anim = true;
		obj_camera_manager.target_character = obj_truck.id;

	// Destroy the current instance of pepper through the player manager
	obj_player_manager.character_destroy();
	// Set the truck as the active character in the player manager
	if (instance_exists(obj_truck))
	{
		// Get the id of the first obj_truck instance
		var _character = obj_truck.id;
	
		obj_player_manager.character_set(_character);
	}

	audio_play_sound(sd_truck_door, 0, false);
	audio_sound_gain(sd_main_percussion, 1, 2000);
	}
}

//walk button function
walk_func = function() {
	if instance_exists(obj_playerChar) {} else if obj_truck.hspd == 0 {
	//make the truck go into parking mode
	with (obj_truck){
		//if the truck is overlapping a door, set it's parking_dest
		var _door = instance_nearest(x,y,obj_door);
		if (place_meeting(x,y,_door)){
			parking_dest = _door.x - _door.sprite_width / 2 + (-sign(image_xscale) * parking_dist);
			truck_state = PlayerState.CutsceneMove;
		}
		//else make the player exit the truck
		else {
			ExitTruck();
		}
	}
	
	}

	audio_sound_gain(sd_main_percussion, 0, 2000);
	audio_play_sound(sd_truck_door, 0, false);
};

//inventory button function
inventory_func = function() {
	obj_inventory.animation_dir = -1;
	global.pause = 1;
}


for (var i = 0; i < length; i += 1) {
	var _button = {
		pos: i,
		rot: 0,
	}
	
	switch button_types[i] {
		case "ride":
			_button.func = ride_func;
			_button.color = PP_BLUE;
			_button.icon = 2;
		break;
		case "walk":
			_button.func = walk_func;
			_button.color = PP_RED;
			_button.icon = 3;
		break;
		case "inventory":
			_button.func = inventory_func;
			_button.color = PP_TAN;
			_button.icon = 4;
		break;
	}
	
	array_push(button_array, _button);
	
}