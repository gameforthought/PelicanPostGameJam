/// @description Insert description here
// You can write your code in this editor

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


if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
}
