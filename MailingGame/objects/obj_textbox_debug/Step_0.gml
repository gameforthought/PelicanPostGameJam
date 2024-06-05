/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

x = vx + xpos;
y = vy + y_anim;

bounce = 2 * sin(step);

step += 0.1;

if point_in_rectangle(mouse_x, mouse_y, vx + (xpos + 140 - 15), 225 - 30, vx + (xpos + 140 + 15), 225) {
	hover = -5;	
} else {
	hover = 0;
}

if up = true && y_step > 0 {
	y_step -= 1;	
}
if up = false {
	y_step += 1;	
}

y_anim = EaseInBack(y_step, 0, 256, 45);

if up = false && y_anim > 255 {
	if room = demo_room {
		obj_time_tracker.day_progress += 1;
	}
	obj_door.open = false;
	global.pause = 0;
	//show_debug_message("bango")
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
	default:
		char_x = -100;
		color = c_black;
	break;
};

//spd_increase();

//text_to_display = string(def);