/// @description Insert description here
// You can write your code in this editor
main_room_sg = audio_create_sync_group(true);
audio_play_in_sync_group(main_room_sg, sd_main_main);
audio_play_in_sync_group(main_room_sg, sd_main_percussion);
audio_sound_gain(sd_main_percussion, 0, 0);