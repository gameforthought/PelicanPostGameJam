/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if image_alpha <= 0 {
	objective_complete(-1,["Find the gnome"],-1);
	give_item(-1,["cly2","gnome","Clyde","???","It looks lost"],-1)
	obj_clyde_door.gnome_collected = 1;
	
	
	instance_destroy();
}
