// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function try_summon_truck(){

	//truck can't be summoned IF
	
	//doesn't exist
	if (!instance_exists(obj_truck)){
		show_debug_message("No truck to summon!");
	}
	//player is in truck
	//on screen
	
	//else summon truck :)
}