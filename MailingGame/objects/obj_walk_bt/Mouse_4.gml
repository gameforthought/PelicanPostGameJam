/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_playerChar) {} else if obj_truck.hspd = 0 {
	var _struct = {
		start_orient: obj_truck.image_xscale	
	}
	instance_create_layer(obj_truck.x - obj_truck.image_xscale * 8, obj_truck.y - 16, "Player", obj_playerChar, _struct);
}

audio_sound_gain(sd_main_percussion, 0, 2000);
if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
