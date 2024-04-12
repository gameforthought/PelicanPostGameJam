/// @description Insert description here
// You can write your code in this editor


ink_load(working_directory + ink_file_name);

ink_bind_external("door_set_knot", door_set_knot);
ink_bind_external("remove_item", remove_item);
ink_bind_external("give_item", give_item);

ink_bind_external("test_func", test_func);

//ink_bind_external("test_func", test_func);



//set_dialogue_character();
//bind game and ink file variables

//ink_variable_set_real()