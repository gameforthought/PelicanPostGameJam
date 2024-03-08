/// @description Insert description here
// You can write your code in this editor

if open = true {
	door_stage -= door_speed;	
} else {
	door_stage += door_speed;	
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
character.emotion = obj_textbox.emotion_tag;
}
else {
	character.emotion = "neutral";
}
}

if instance_exists(obj_textbox) {
	open = obj_textbox.door_open_tag;
}