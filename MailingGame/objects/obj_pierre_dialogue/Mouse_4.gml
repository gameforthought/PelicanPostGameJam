/// @description when clicked, start the interaction
// You can write your code in this editor

//when clicked, make a textbox visible
if indicator = true && instance_exists(obj_textbox) = false && story != -1 {
//if open = false {
//		open = true;
//	} else {
//		open = false;
//	}
	
	alarm[0] = 1;
	global.intro = false;
	
obj_playerChar.pepper_state = PlayerState.CutsceneMove;
		obj_playerChar.move_dest = x + spot_to_go;
}
/// @description Insert description here
// You can write your code in this editor
