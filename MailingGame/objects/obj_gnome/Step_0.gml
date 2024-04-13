/// @description Insert description here
// You can write your code in this editor

if dissolve = true {
	image_alpha -= 0.02;	
}

if image_alpha <= 0 {
	show_debug_message("gnomed")
	give_item(-1,["Gnome1","gnome","???","???","An omen of things to come"],-1)
	
	instance_destroy();
}