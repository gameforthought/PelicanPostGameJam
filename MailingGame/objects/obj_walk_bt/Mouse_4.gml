/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_playerChar) {} else if obj_truck.hspd == 0 {
	//make the truck go into parking mode
	with (obj_truck){
		//if the truck is overlapping a door, set it's parking_dest
		var _door = instance_nearest(x,y,obj_door);
		if (place_meeting(x,y,_door)){
			parking_dest = _door.x - _door.sprite_width / 2 + (-sign(image_xscale) * parking_dist);
			truck_state = PlayerState.CutsceneMove;
		}
		//else make the player exit the truck
		else {
			ExitTruck();
		}
	}
	
	}

audio_sound_gain(sd_main_percussion, 0, 2000);
audio_play_sound(sd_truck_door, 0, false);
if instance_exists(obj_posUI_container) {
	instance_destroy(obj_posUI_container.id);
}
