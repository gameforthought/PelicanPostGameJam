/// @description Insert description here
// You can write your code in this editor
if room = demo_room && global.intro = false {
audio_start_sync_group(main_room_sg);
audio_sound_gain(sd_main_main, 0.001, 0);
audio_sound_gain(sd_main_main, 1, 8000);
}

if room = post_office || global.intro = true {
	
	if !audio_is_playing(sd_interior) {
		audio_play_sound(sd_interior, 0, true);
		audio_sound_gain(sd_interior, 0.001, 0);
		audio_sound_gain(sd_interior, 0.2, 8000);
	}
}

if (room == rgf_24_videoloop)
{
	// Prevent overlapping music on game restart.
	audio_stop_all();
	audio_destroy_sync_group(main_room_sg);
}