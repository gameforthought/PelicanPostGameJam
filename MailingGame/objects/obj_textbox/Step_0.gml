/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

x = vx + xpos;
y = vy + y_anim;

var _choice_hover = undefined;

choice_length = array_length(choice_array);


button_array[0] = [xpos + 140, y_anim + 225];

//detect if the player is hovering the next button
if point_in_rectangle(mouse_x, mouse_y, vx + (xpos + 140 - 15), 225 - 30, vx + (xpos + 140 + 15), 225) {
	button_array[0][2] = -5;	
} else {
	button_array[0][2] = 0;
}

if choice_length > 0 {
	
	for (var i = 0; i < choice_length; i++) {
		
		var _choice_dir = dir * 39;
		button_array[i + 1] = [(xpos - _choice_dir + 24), (y_anim + 256 - 49 + 32 - (32 * i))];
		
		
		if point_in_rectangle(mouse_x, mouse_y, vx + (button_array[i + 1][0] - 15), 
		button_array[i + 1][1] - 30, 
		vx + (button_array[i + 1][0] + 15),
		button_array[i + 1][1]) {
			
			button_array[i + 1][2] = -5;
			
			_choice_hover = i;
		} else {
			button_array[i + 1][2] = 0;
		}
	}
	
	
	
} else {
	array_resize(button_array, 1);
}

bounce = 2 * sin(step);

step += 0.1;



if up = true && y_step > 0 {
	y_step -= 1;	
}
if up = false {
	y_step += 1;	
}

y_anim = EaseInBack(y_step, 0, 256, 45);

//destroy the textbox when done
if up = false && y_anim > 255 {
	if room = demo_room {
		obj_time_tracker.day_progress += 1;
	}
	obj_door.open = false;
	global.pause = 0;
	
	obj_playerChar.pepper_state = PlayerState.FreeMove;
	instance_destroy();
}


switch name_tag {
	case "Beatrice":
		char_x = obj_beatrice_door.x - 24;
	break;
	case "Suzannah":
		char_x = obj_suzannah_door.x - 24;
	break;
	case "Pepper":
		char_x = obj_playerChar.x;
	break;
	case "Pierre":
		char_x = obj_pierre.x;
	break;
	case "Clyde":
		char_x = obj_clyde_door.x - 24;
	break;
	default:
		char_x = obj_playerChar.x;
	break;
};

color = color_lookup(name_tag);


//if hit the tilde key, skip the dialogue
if (keyboard_check_pressed(ord("1"))){
	skip_dialogue();	
}

if (keyboard_check_pressed(ord("A"))){
	if (ink_can_continue()){
		show_debug_message("Can continue");
	}
	else show_debug_message("No can continue");
}


if choice_length > 0 {
	name_tag = "Pepper";
	obj_playerChar.emotion_drawer.emotion = "confused";
	
	var _preview = "How should I respond?";
	
	if _choice_hover != undefined {
		_preview = choice_preview_array[_choice_hover];	
	}
	richtext = scribble("[wave][slant][#766659][speed,1.5]" + _preview + "[/]");
	richtext.wrap(box_width * 2);
	richtext.line_height(-1, string_height(text_to_display) - 3);
}
//spd_increase();

//text_to_display = string(def);