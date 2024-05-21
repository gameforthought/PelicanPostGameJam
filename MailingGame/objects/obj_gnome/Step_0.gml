/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if image_alpha <= 0 {
	give_item(-1,["Cly2","gnome","???","???","It looks lost"],-1)
	obj_clyde_door.gnome_collected = 1;
	
	instance_destroy();
}
