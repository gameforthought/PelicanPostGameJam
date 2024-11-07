/// @description when clicked, start the interaction
// You can write your code in this editor

//when clicked, make a textbox visible
if indicator = true && instance_exists(obj_textbox) = false && story != -1 {
//if open = false {
//		open = true;
//	} else {
//		open = false;
//	}
	
	obj_tooltip_manager.hide_tooltip_by_id("tt_pierre");
	obj_tooltip_manager.add_tooltip(
		"tt_truck",
		"Click the truck to get in",
		function() { return instance_exists(obj_truck); }
	);
	
	alarm[0] = 1;
	global.intro = false;
	
obj_playerChar.pepper_state = PlayerState.CutsceneMove;
		obj_playerChar.move_dest = x + spot_to_go;
}
/// @description Insert description here
// You can write your code in this editor
