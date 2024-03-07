//load the ink story's json file
ink_load(working_directory + "test.json");

//bind the ink file's hp variable to GM's health_changed script
ink_observe_variable("hp", health_changed);
//bind the shake script to "shake" in the ink file
ink_bind_external("shake", shake);
health = 200;

//run the next line of the ink file
text = ink_continue();
choice = false;
shaking = false;