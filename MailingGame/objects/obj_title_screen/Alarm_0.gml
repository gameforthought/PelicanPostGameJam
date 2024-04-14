/// @description Start Button Code
// You can write your code in this editor

obj_title_screen.start_shift = 1;
audio_play_sound(sd_door_open, 0, false)
with (obj_post_office_door) {
	event_perform(ev_mouse, ev_left_press);
}