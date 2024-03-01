/// @description Insert description here
// You can write your code in this editor

if open = true {
	door_stage -= door_speed;	
} else {
	door_stage += door_speed;	
}

door_stage = clamp(door_stage, 0, 48);

