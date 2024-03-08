/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;

box_width = 118;
line_height = string_height(text_to_display);

next_line();
def = 0;

alarm[0] = string_length(text_to_display) * 1.2;
forward = false;

color = c_red;
char_x = 0;
bounce = 0;
step = 0;

windowScale = window_get_height() / room_height;

global.pause = 1;

//get direction the character is facing
if instance_exists(obj_playerChar) {
	dir = obj_playerChar.image_xscale;	
} else {
	dir = obj_truck.image_xscale;	
}

//turn direction into textbox position
if dir = 1 {
	xpos = 480 - 202;
} else {
	xpos = 18;	
}