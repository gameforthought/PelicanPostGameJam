/// @description when clicked, start the interaction
// You can write your code in this editor

//when clicked, make a textbox visible
if indicator == true && instance_exists(obj_textbox) = false  {
//if open = false {
//		open = true;
//	} else {
//		open = false;
//	}
	
	if object_get_name(object_index) = "obj_post_office_door" || story != -1 {
	
	if !instance_exists(obj_truck) || !position_meeting(x - 24, y, obj_truck) {
	
	if global.pause	== false || global.intro == true {
	
	if room == demo_room {
	audio_play_sound(sd_knock, 0, false);
	
	}
	
	if alarm[0] == -1 {
		alarm[0] = knock_time;
		obj_playerChar.pepper_state = PlayerState.CutsceneMove;
		
		var facing = (obj_playerChar.x - x) == 0 ? 1 : (obj_playerChar.x - x) ;
		
		if abs(point_distance(obj_playerChar.x, y, (x - 25) + sign(facing) * spot_to_go, y)) > 20 {
			obj_playerChar.move_dest = (x - 25) + sign(facing) * spot_to_go;
			
	
		} else {
			obj_playerChar.move_dest = obj_playerChar.x;
			if x > obj_playerChar.x {
				obj_playerChar.image_xscale = 1;
			} else {
				obj_playerChar.image_xscale = -1;	
			}
		}

	} else if alarm[0] > 20 {
		alarm[0] -= 10;	
	}
	
	}
	}
}
}

