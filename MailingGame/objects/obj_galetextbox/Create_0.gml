/// @description Insert description here
// You can write your code in this editor

image_alpha = 0;
windowScale = window_get_height() / room_height;

type_speed = (0.5);

box_width = 118;
scribble_font_set_default("ft_gui");

next_line();
richtext = scribble("[delay]" + text_to_display);
richtext.wrap(box_width * windowScale);
richtext.line_height(-1, string_height(text_to_display) - 5);

typewriter = scribble_typist();
typewriter.in(type_speed, 0);

def = 0;

//alarm[0] = string_length(text_to_display) * 1.2;
forward = false;

color = c_red;
char_x = 0;
bounce = 0;
step = 0;
hover = 0;

y_anim = 255;
up = true;
y_step = 45;



global.pause = 1;

//get direction the character is facing
//if instance_exists(obj_playerChar) {
//	dir = obj_playerChar.image_xscale;	
//} else {
//	dir = obj_truck.image_xscale;	
//}

dir = 1;

//turn direction into textbox position
if dir = 1 {
	xpos = 480 - 202;
} else {
	xpos = 18;	
}