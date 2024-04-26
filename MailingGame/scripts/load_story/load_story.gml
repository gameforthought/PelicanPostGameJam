// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///Loads the main ink json file, then sets the character variable in the ink story
function load_story(knot_to_load) {
	//load the story
	//ink_load(working_directory + "demo_dialogue.json");
	
//	obj_playerChar.pepper_state = PlayerState.NoMove;
	//ink_variable_set_real("character",_dialogue_character);
	//tell the ink story where to go
	ink_choose_path(knot_to_load);

	var textbox = instance_create_layer(0,100,"positional_gui", obj_textbox);
	
	//commented out cuz doesn't work yet
	
	//initialize the ink variable using the story tracker's data, then start tracking the ink variable's value
	//ink_variable_set_real("gnome_count",obj_story_variable_tracker.ink_gnome_count);
	
	//with (obj_story_variable_tracker){
	//	ink_variable_set_real("gnome_count", ink_gnome_count);
	//	//ink_gnome_count++;
	//ink_observe_variable("gnome_count", gnomes_changed);
	
	//}
	
	return textbox;
}