/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sd_click, 0, false);
audio_sound_pitch(sd_click, random_range(0.6, 1.4));
scale = 0.01;
step = 0;

rotation = irandom_range(-120, 30);

go = false;

windowScale = global.window_scale;