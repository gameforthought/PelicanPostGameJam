/// @description Insert description here
// You can write your code in this editor
if audio_sound_get_gain(sd_main_main) = 0 {
	audio_stop_sound(sd_main_main);
}
if audio_sound_get_gain(sd_interior) = 0 {
	audio_stop_sound(sd_interior);
}