/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;

box_width = 108;
line_height = string_height(text_to_display);

text_to_display = next_line();
def = 0;

name = "CLYDE";
color = c_red;

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