// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function try_summon_truck(){

	//truck can't be summoned IF
	show_debug_message("Trying to summon truck");
	//it doesn't exist
	if (!instance_exists(obj_truck)){
		show_debug_message("No truck to summon!");
		
		return;
	}
	
	//game is paused
	//already handled
	if (GameplayPaused()){
		return;
	}
	
	//player is in truck
	//already handled
	
	//if the player is close to the truck
	if (abs(obj_truck.x - obj_playerChar.x) < 100) {
		show_debug_message("Truck is already close to you!");
		return;
	}
		
	//else summon truck :)
	else {	
		obj_truck.summoned = true;
		obj_truck.parking_dest = obj_playerChar.x;
		obj_truck.truck_state = PlayerState.CutsceneMove;
		
		obj_truck.parking_lenience = 100;
		
		obj_truck.hdecel = .3;
	}
}