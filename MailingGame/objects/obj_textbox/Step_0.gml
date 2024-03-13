/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

x = vx + xpos;
y = vy;

bounce = 2 * sin(step);

step += 0.1;


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
	default:
		char_x = -100;
		color = c_black;
	break;
};

//spd_increase();

//text_to_display = string(def);