/// @description Insert description here
// You can write your code in this editor
if room = demo_room {
audio_start_sync_group(main_room_sg);
audio_sound_gain(sd_main_main, 0.001, 0);
audio_sound_gain(sd_main_main, 1, 2000);
}

if room = post_office {
audio_play_sound(sd_interior, 0, true);
audio_sound_gain(sd_interior, 0.001, 0);
audio_sound_gain(sd_interior, 0.2, 2000);
}