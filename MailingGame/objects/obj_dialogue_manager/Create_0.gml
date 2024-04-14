/// @description Insert description here
// You can write your code in this editor
show_debug_message("new manager")

//ink_load(working_directory + ink_file_name);
ink_load(working_directory + "demo_dialogue.json");


scribble_typists_add_event("door_set_knot", door_set_knot);
scribble_typists_add_event("give_item", give_item);
scribble_typists_add_event("remove_item", remove_item);



//set_dialogue_character();
//bind game and ink file variables

//ink_variable_set_real()