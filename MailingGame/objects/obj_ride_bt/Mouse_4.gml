/// @description Insert description here
// You can write your code in this editor

obj_truck.alarm[0] = 20;
obj_truck.dismount_anim = true;
instance_destroy(obj_playerChar.id);
audio_play_sound(sd_truck_door, 0, false);
audio_sound_gain(sd_main_percussion, 1, 2000);

if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
