/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

x = vx + xpos;
y = vy + y_anim;


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
		button_array[i + 1] = [(xpos - 42 + 24), (y_anim + 256 - 49 + 32 - (32 * i))];
		
		
		if point_in_rectangle(mouse_x, mouse_y, vx + (button_array[i + 1][0] - 15), 
		button_array[i + 1][1] - 30, 
		vx + (button_array[i + 1][0] + 15),
		button_array[i + 1][1]) {
			
			button_array[i + 1][2] = -5;	
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
	show_debug_message("bango");
	instance_destroy();
}


switch name_tag {
	case "Beatrice":
		char_x = obj_beatrice_door.x - 24;
		color = #5a4a42;
	break;
	case "Suzannah":
		char_x = obj_suzannah_door.x - 24;
		color = #ca4d35;
	break;
	case "Pepper":
		char_x = obj_playerChar.x;
		color = #5a7fc8;
	break;
	case "Pierre":
		char_x = obj_pierre.x;
		color = #f5735b;
	break;
	case "Clyde":
		char_x = obj_clyde_door.x - 24;
		color = #4ab96e;
	break;
	default:
		char_x = obj_playerChar.x;
		color = c_black;
	break;
};


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
//spd_increase();

//text_to_display = string(def);