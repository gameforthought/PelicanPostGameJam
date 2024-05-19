/// @description Insert description here
// You can write your code in this editor

if open = true {
	door_stage -= door_speed;
	
} else {
	door_stage += door_speed;	
}

if door_stage > 20 && door_stage < 28 {
if !audio_is_playing(sd_door_open) && global.intro = false && room = demo_room {
	audio_play_sound(sd_door_open, 0, false);	
}	
}
door_stage = clamp(door_stage, 0, 48);


//indicator

if instance_exists(obj_playerChar) && point_distance(x - 24, y, obj_playerChar.x, y) < 80 {
	indicator = true;
	
} else {
	indicator = false;	
}

bounce = 2 * sin(step);

step += 0.1;


if character != -1 {
if instance_exists(obj_textbox) {

if obj_textbox.name_tag = "Pepper" {
	if obj_playerChar.emotion_drawer != -1 {
	obj_playerChar.emotion_drawer.emotion = obj_textbox.emotion_tag;
	}
	character.emotion = "neutral";
} else {
	character.emotion = obj_textbox.emotion_tag;
	if obj_playerChar.emotion_drawer != -1 {
	obj_playerChar.emotion_drawer.emotion = "neutral"
	}
}
}
else {
	
	character.emotion = "neutral";
}
}

if instance_exists(obj_textbox) {
	open = obj_textbox.door_open_tag;
}

if (indicator = true && !instance_exists(obj_textbox) && story != -1) || shine_step > 0 {
	shine_step += 1.5 - (abs(50 - shine_step) / 50);
}

if shine_step >= 100 {
	shine_step = 0;	
}