/// @description Insert description here
// You can write your code in this editor
depth += 50;

show_debug_message("textbox")
image_alpha = 0;
windowScale = global.window_scale;

//choice_array = ["Yes", "No", "Maybe"];

choice_array = [];
choice_preview_array = [];
choice_length = 0;

button_array = [];




type_speed = (0.5);

box_width = 118;
scribble_font_set_default("ft_gui");

next_line();
richtext = scribble("[delay]" + text_to_display);
richtext.wrap(box_width * 2);
richtext.line_height(-1, string_height(text_to_display) - 3);

typewriter = scribble_typist();
typewriter.in(type_speed, 0);

pitch = 1;
typewriter.sound_per_char([sd_type], pitch - 0.1, pitch + 0.1, " !.,?-;:()");

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
if instance_exists(obj_playerChar) {
	//dir = obj_playerChar.image_xscale;
	
	var _door = instance_nearest(obj_playerChar.x, obj_playerChar.y, obj_door);
	
	dir = sign(_door.x - obj_playerChar.x);
} else {
	dir = obj_truck.image_xscale;	
}

if room == post_office {
	dir = 1;	
}

//turn direction into textbox position
if dir = 1 {
	xpos = 480 - 202;
} else {
	xpos = 18;	
}




update_text_to_display = function()
{
	richtext = scribble(text_to_display);
				richtext.wrap(box_width * 2);
				richtext.line_height(-1, string_height(text_to_display) - 3);
				typewriter = scribble_typist();
				typewriter.in(type_speed, 0);
				pitch = 1;
				typewriter.sound_per_char([sd_type], pitch - 0.1, pitch + 0.1, " !.,?-;:()");
				forward = false;
}