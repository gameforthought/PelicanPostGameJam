// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///Loads the main ink json file, then sets the character variable in the ink story
function load_story(_dialogue_character) {
	//load the story
	ink_load(working_directory + "galeTest.json");
	
	//ink_variable_set_real("character",_dialogue_character);
	
	//tell the ink story what character's knot to go to
	ink_variable_set_string("character", _dialogue_character);

	instance_create_layer(x+100,y,"collision", obj_textbox);
	
	//commented out cuz doesn't work yet
	
	//initialize the ink variable using the story tracker's data, then start tracking the ink variable's value
	//ink_variable_set_real("gnome_count",obj_story_variable_tracker.ink_gnome_count);
	
	//with (obj_story_variable_tracker){
	//	ink_variable_set_real("gnome_count", ink_gnome_count);
	//	//ink_gnome_count++;
	//ink_observe_variable("gnome_count", gnomes_changed);
	
	//}
	
	
}